class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :sign_in_as

  def sign_in_as(email)
  	session[:current_email] = email #params[:session][:email_address]
  end

  # def current_email(value = nil)
  # 	session[:current_email] ||= value
  # end

  def current_user
  	User.new(session[:current_email])	
  end
end
