class NeedsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  before_action :find_grocer
  before_action :find_need, only: [:show, :edit, :update, :destroy]
  def index
    @needs = Need.all
  end

  def new
    @need = Need.new
  end

  def create
    @need = @grocer.needs.new(need_params)
    if @need.save == true
      redirect_to grocer_path(current_user.grocer_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @need.update_attributes need_params
      redirect_to grocer_path(current_user.grocer_id)
    else 
      render :edit
    end  
  end
  
  def show
  end

  def destroy
    @need.delete
    redirect_to grocer_path(current_user.grocer_id)
  end

  def quantity
    @grocer = Grocer.find params[:grocer_id]
    @need = Need.find params[:need_id]
    respond_to do |format|
      format.js
    # if @need.quantity.save
    #     render :partial => 'quantity_partial'
    end
  end
  def need_quantity_minus_one
    @need =Need.find params[:id]
    puts "*"*100
    @need.quantity -= 1
    puts "*"*100 

    @need.save
    puts "*"*200 

    respond_to do |format|
      format.js
      render :partial => 'quantity_partial'
      puts "*"*3
    end

  end

private
  def find_grocer
    @grocer = Grocer.find params[:grocer_id]
  end

  def find_need
    @need = Need.find params[:id]
  end

  def need_params
    params.require(:need).permit(:item, :description, :quantity, :grocer_id)
  end

end

