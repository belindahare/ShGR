class GrocersController < ApplicationController
  before_action :find_grocer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  def index
    @grocers = Grocer.all

  end
  def show
    @need = @grocer.needs.new
    @needs = @grocer.needs
  end


  def new
    @grocer = Grocer.new
  end

  def create
    @grocer = Grocer.new grocer_params
    if @grocer.save
      redirect_to grocers_path
    end
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
    # @need = Need.find params[:id]
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
