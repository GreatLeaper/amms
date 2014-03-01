class ActivationCodesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @codes = ActivationCode.all
  end

  def new
    @code = ActivationCode.new
  end

  def create
    @code = ActivationCode.generate_code(params[:activation_code][:lure_id])
    if @code.save
      redirect_to activation_codes_path, notice: "Code #{@code.code} Created"
    else
      render :new
    end
  end

  def destroy
    code = ActivationCode.find(params[:id])
    if code.activated == true
      redirect_to :back, alert: "An activated code can't be deleted."
    else
      code.destroy
      redirect_to :back, notice: "Code deleted."
    end
  end

end
