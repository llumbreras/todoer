class ApplicationController < ActionController::Base
  protect_from_forgery

  def sign_in_as(email)
  	session[:current_email] = email
  end
  
end
