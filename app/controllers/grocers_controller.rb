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
    @need = Need.find params[:id]
    @user = current_user
    @user.grocer_id = @grocer.id
    @user.save
    # puts "*"*400
    
    # @need.quantity -= 1
    # puts "*"*200 

    # @need.quantity.to_s.save
    # puts "*"*200 

    # respond_to do |format|
    #   format.js
    #   puts "*"*200 

    redirect_to grocer_path(@grocer)
  end

# def quantity
#     @grocer = Grocer.find params[:grocer_id]
#     @need = Need.find params[:need_id]
#     respond_to do |format|
#       format.js
#     if @need.quantity.save
#         render :partial => 'quantity_partial'
#     end
#     end
#   end
#   def need_quantity_minus_one
#     @need.quantity -= 1
#     respond_to do |format|
#       format.js
#     if @need.quantity.save
#       render :partial => 'quantity_partial'
#     end
#     end
#   end

  private

  def grocer_params
    params.require(:grocer).permit(:name, :address, :city, :state, :zip)
  end
 
  def find_grocer
    @grocer = Grocer.find params[:id]
  end
end
