module ApplicationHelper
  def login_links
    if user_signed_in?
      (link_to "Account", edit_user_registration_path) +
      (link_to "Log Out", destroy_user_session_path, method: :delete) +
      (link_to "Stores", grocers_path)
    else
      (link_to "Log In", new_user_session_path) +
      (link_to "Sign Up", new_user_registration_path)
    end
  end
end
