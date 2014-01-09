class ApplicationController < ActionController::Base
  protect_from_forgery

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
