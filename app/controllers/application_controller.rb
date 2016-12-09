class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize
    redirect_to '/' unless session[:logged_in]
  end
end
