class UserLuresController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  def index
    @user_lures = UserLure.where(user_id: current_user.id)
    #render 'index'
  end

  def create
    @user_lure = UserLure.new(params[:user_lure])
    if @user_lure.save
      redirect_to lures_path, notice: "Lure #{@user_lure.lure.lure_type.name} - #{@user_lure.lure.color.name} Created"
    else
      render :new
    end
  end

  # Don't allow deletion - instead make it inactive
  def destroy
    user_lure = UserLure.find(params[:id])
    user_lure.deactivate!
    redirect_to :back, notice: "Lure #{user_lure.lure.name.lure_type.name} retired. :-("
  end

end
