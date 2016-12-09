class SessionsController < ApplicationController
  def create
    if authenticate(params[:password])
      session[:logged_in] = true
      redirect_to '/rsvp'
    else
      session[:logged_in] = nil
      redirect_to '/'
    end
  end

  private

  def authenticate(password)
    password == ENV['SUPER_PASSWORD']
  end
end
