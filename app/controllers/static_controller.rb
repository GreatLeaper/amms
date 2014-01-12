class StaticController < ApplicationController
  protect_from_forgery

  def home
    if admin?
      render 'amms'
    else
      render 'home'
    end
  end

  def tom
  end

end

