class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :determine_layout

  protected

  def determine_layout
    if admin?
      "amms"
   else
      "customer"
    end
  end

  def admin?
    user_signed_in?
  end

end
