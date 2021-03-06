class HooksController < ApplicationController
  before_filter :authenticate_user!

  def index
    @hooks = Hook.all
  end

  def new
    @hook = Hook.new
  end

  def create
    @hook = Hook.new(hook_params)
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
    if @hook.update_attributes!(hook_params)
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

  private

  def hook_params
    params.require(:hook).permit(:hook_type, :size)
  end
end
