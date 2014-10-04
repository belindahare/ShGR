class VolunteerOrganizationsController < ApplicationController
  before_action :find_volunteer_organization, only: [:show, :edit, :update, :destroy]
  def index
  end
  def create 
  end
  def show
    # @volunteer_organization = current_user.grocer
    @volunteer_organization = @grocer.volunteer_organization
    @need = @volunteer_organization.need
  end

  def new
  end

  def edit
  end

  private
    def need_params
      params.require(:need).permit(:item, :description, :quantity, :volunteer_organization_id)
    def volunteer_organization_params
      params.require(:volunteer_organization).permit(:name, :address, :city, :state, :zip, :phone, :grocer_id)
    end
    def find_volunteer_organization
      @volunteer_organization = VolunteerOrganization.find params[:id]
    end
end
