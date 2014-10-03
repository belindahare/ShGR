class GrocersController < ApplicationController
  before_action :find_grocer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  def index
    @grocers = Grocer.all
  end

  def show
    @need = @grocer.needs.new

  end

  def new
    @grocer = Grocer.new
  end

  def create
    @grocer = grocer.create grocer_params
  end

  def grocers_search
    @grocers = Grocer.where("zip LIKE ?", "%#{params[:q]}%")
    respond_to do |format|
      format.js
    end
  end

  def edit
  end
  def update
    @user = current_user
    @user.grocer_id = @grocer.id
    @user.save
    redirect_to grocer_path(@grocer)
  end

  private

  def grocer_params
    params.require(:grocer).permit(:name, :address, :city, :state, :zip)
  end

  def find_grocer
    @grocer = Grocer.find params[:id]
  end
end
