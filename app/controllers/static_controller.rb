class StaticController < ApplicationController
  protect_from_forgery

  def home
    if current_user.nil?
      @tdm = LureType.where(name: "Tom's Dislocated Minnow").first
      @fb = LureType.where(name: "Fat Back").first
      render 'home'
    elsif current_user.fisherman?
      render 'fisherman'
    elsif  current_user.admin?
      render 'amms'
    end
  end

  def tom
  end

end

