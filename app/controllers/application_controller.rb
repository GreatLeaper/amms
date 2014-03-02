class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :determine_layout

  protected

  def determine_layout
    if current_user.nil?
      "customer"
   elsif current_user.admin?
      "amms"
    end
  end

  #def admin?
  #  user_signed_in?
  #end

end
