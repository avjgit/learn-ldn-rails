class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  layout :set_layout
  
  private
  def set_layout
    if not current_user
      'authentication'
    else
      'application'
    end
  end
end
