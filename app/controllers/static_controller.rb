class StaticController < ApplicationController
  protect_from_forgery

  def home
    if admin?
      render 'amms'
    else
      @tdm = LureType.where(name: "Tom's Dislocated Minnow").first
      @fb = LureType.where(name: "Fat Back").first
      render 'home'
    end
  end

  def tom
  end

end
