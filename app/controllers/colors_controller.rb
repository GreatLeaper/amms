class ColorsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @colors = Color.all
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new(params[:color])
    if @color.save
      redirect_to colors_path, notice: "Color #{@color.name} Created"
    else
      render :new
    end
  end

  def edit
    @color = Color.find(params[:id])
  end

  def update
    @color = Color.find(params[:id])
    if @color.update_attributes!(params[:color])
      redirect_to colors_path, notice: "Color #{@color.name} Updated"
    else
      render :edit
    end
  end

  def destroy
    Color.find(params[:id]).destroy
    redirect_to :back, notice: "Color deleted."
  end

end
