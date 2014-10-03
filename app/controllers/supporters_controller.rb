# class SupportersController < ApplicationController
#   before_action :find_supporter, only: [:show, :edit, :update, :destroy]
#   def index
#     @supporter = current_user.grocer 
#   end
#   def new
#     @supporter = current_user.new
#   end
#   def create
#     @grocer = Grocer.find params[:grocer_id]
#     @supporter = current_user.grocer.create(supporter_params)
#   end
#   def edit
#   end
#   def destroy
#   end

#   private

#     def supporter_params
#       params.require(:supporter).permit(:full_name, :address, :city, :state, :zip, :grocer_id)
#     end

#     def find_supporter
#       @supporter = current_user.find params[:id]
#     end
# end
