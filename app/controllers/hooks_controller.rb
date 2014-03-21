class HooksController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  def index
    @hooks = Hook.all
  end

  def new
    @hook = Hook.new
  end

  def create
    @hook = Hook.new(params[:hook])
    if @hook.save
      redirect_to hooks_path, notice: "Hook #{@hook.size} Created"
    else
      render :new
    end
  end

  def edit
    @hook = Hook.find(params[:id])
  end

  def update
    @hook = Hook.find(params[:id])
    if @hook.update_attributes!(params[:hook])
      redirect_to hooks_path, notice: "Hook #{@hook.size} Updated"
    else
      render :edit
    end
  end

  def destroy
    hook = Hook.find(params[:id])
    hook.destroy
    redirect_to :back, notice: "Hook #{hook.size} deleted."
  end

end
