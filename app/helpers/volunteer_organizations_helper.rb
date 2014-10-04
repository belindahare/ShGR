module VolunteerOrganizationsHelper
   def need_list
    x= ""
    @volunteer_organization.needs.each do |need|
      x = x + "#{need.item} #{need.quantity} #{need.description}"
    end
    x.html_safe
  end
end
