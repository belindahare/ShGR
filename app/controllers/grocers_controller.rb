class GrocersController < ApplicationController
  before_action :find_grocer only: [:show, :edit, :update, :destroy]
  def index
    @grocers = Grocer.all
  end

  def show
  end

  def new
    @grocer = Grocer.new
  end
  def create
    @grocer = grocer.create grocer_params


  def edit

  end
  private
  def grocer_params
    params.require(:grocer).permit(:name, :address, :city, :state, :zip, :phone_number)
  def find_grocer
    @grocer = Grocer.find params[:id]
  end
end
