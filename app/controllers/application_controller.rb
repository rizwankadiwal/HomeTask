class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception

  layout 'application/application'
  def login
    session[:signed_in] = true
    session[:username] = params[:username]
    redirect_to tasks_url
  end

  def logout
    session[:signed_in] = false
    redirect_to tasks_url
  end

  def index

  end
end
