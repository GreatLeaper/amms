class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  protect_from_forgery

  layout :determine_layout

  protected

  def determine_layout
    if current_user.nil?
      "customer"
   elsif current_user.fisherman?
      "fisherman"
   elsif current_user.admin?
      "amms"
    end
  end

end
