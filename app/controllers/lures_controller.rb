class LuresController < ApplicationController
  before_filter :authenticate_user!

  def index
    @lures = Lure.active.all
    render 'index'
  end

  def new
    @lure = Lure.new
  end

  def create
    @lure = Lure.new(lure_params)
    if @lure.save
      redirect_to lures_path, notice: "Lure #{@lure.lure_type.name} - #{@lure.color.name} Created"
    else
      render :new
    end
  end

  def edit
    @lure = Lure.find(params[:id])
  end

  def update
    @lure = Lure.find(params[:id])
    if @lure.update_attributes!(lure_params)
      redirect_to lures_path, notice: "Lure #{@lure.lure_type.name} - #{@lure.color.name} Updated"
    else
      render :edit
    end
  end

  # Don't allow deletion - instead make it inactive?
  #def destroy
  #  lure = Lure.find(params[:id])
  #  lure.destroy
  #  redirect_to :back, notice: "Lure #{lure.name.lure_type.name} - #{@lure.color.name."
  #end

  private

  def lure_params
    params.require(:lure).permit(:code, :lure_type_id, :color_id, :active, :image, :paypal_button_id)
  end
end
