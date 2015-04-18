class LureTypesController < ApplicationController
  before_filter :authenticate_user!,  except: [:index, :show]

  def index
    @lure_types = LureType.order(:weight)
    if admin?
      render 'index'
    else
      render 'dashboard'
    end
  end

  def show
    @lure_type = LureType.find(params[:id])
  end

  def new
    @lure_type = LureType.new
  end

  def create
    @lure_type = LureType.new(lure_type_params)
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
    if @lure_type.update_attributes!(lure_type_params)
      redirect_to lure_types_path, notice: "Lure Type #{@lure_type.name} Updated"
    else
      render :edit
    end
  end

  def destroy
    lure_type = LureType.find(params[:id])
    lure_type.destroy
    redirect_to :back, notice: "Lure Type #{lure_type.name} deleted."
  end

  private

  def lure_type_params
    params.require(:lure_type).permit(:name, :length, :weight, :depth, :description, :image, :hook_id, :bill_id, :video_url)
  end
end
