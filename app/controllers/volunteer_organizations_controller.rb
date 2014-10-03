class VolunteerOrganizationsController < ApplicationController
  before_action :find_volunteer_organization, only: [:show, :edit, :update, :destroy]
  def index
  end
  def create 
  end
  def show
    @volunteer_organization = current_user.grocer
  end

  def new
  end

  def edit
  end

  private
    def volunteer_organization_params
        parms.require(:volunteer_organization).permit(:name, :address, :city, :state, :zip, :phone, :grocer_id)
    def find_volunteer_organization
      @volunteer_organization = VolunteerOrganization.find parmas[:id]
end
