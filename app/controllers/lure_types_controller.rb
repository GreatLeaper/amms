class LureTypesController < ApplicationController
  before_filter :authenticate_user!,  except: [:index, :show]
  load_and_authorize_resource

  def index
    @lure_types = LureType.order(:weight)
    if current_user.nil?
      render 'dashboard'
    elsif current_user.admin?
      render 'index'
    end
  end

  def show
    @lure_type = LureType.find(params[:id])
  end

  def new
    @lure_type = LureType.new
  end

  def create
    @lure_type = LureType.new(params[:lure_type])
    if @lure_type.save
      redirect_to lure_types_path, notice: "Lure Type #{@lure_type.name} Created"
    else
      render :new
    end
  end

  def edit
    @lure_type = LureType.find(params[:id])
  end

  def update
    @lure_type = LureType.find(params[:id])
    if @lure_type.update_attributes!(params[:lure_type])
      redirect_to lure_types_path, notice: "Lure Type #{@lure_type.name} Updated"
    else
      render :edit
    end
  end

  def destroy
    lure_type = LureType.find(params[:id])
    #lure_type.destroy
    #redirect_to :back, notice: "Lure Type #{lure_type.name} deleted."
  end

end
