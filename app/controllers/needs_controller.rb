class NeedsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  before_action :find_volunteer_organization
  before_action :find_grocer
  before_action :find_need, only: [:show, :edit, :update, :destroy]
  def index
    @needs = Need.all
  end 
  def new
    @needs = Need.new
  end
  def create
    @need = @volunteer_organization.needs.new(need_params)
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
private
  def find_volunteer_organization
    @volunteer_organization = VolunteerOrganization.find params[:volunteer_organization_id]
  end
  def find_grocer
    @grocer = Grocer.find params[:grocer_id]
  end
  def find_need
    @need = Need.find params[:id]
  end
  def need_params
    params.require(:need).permit(:item, :description, :quantity, :volunteer_organization_id)
  end
end

end
