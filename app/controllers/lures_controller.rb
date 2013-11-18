class LuresController < ApplicationController

  if 1==2
    layout "customer"
  else
    layout "amms"
  end

  def index
    @lures = Lure.all
    if 1==2
      render 'dashboard'
    else
      render 'index'
    end
  end

  def show
    @lure = Lure.find(params[:id])
  end

  def new
    @lure = Lure.new
  end

  def create
    @lure = Lure.new(params[:lure])
    if @lure.save
      redirect_to lures_path, notice: "Lure #{@lure.name} Created"
    else
      render :new
    end
  end

  def edit
    @lure = Lure.find(params[:id])
  end

  def update
    @lure = Lure.find(params[:id])
    if @lure.update_attributes!(params[:lure])
      redirect_to lures_path, notice: "Lure #{@lure.name} Updated"
    else
      render :edit
    end
  end

  def destroy
    lure = Lure.find(params[:id])
    lure.destroy
    redirect_to :back, notice: "Lure #{lure.name} deleted."
  end

end
