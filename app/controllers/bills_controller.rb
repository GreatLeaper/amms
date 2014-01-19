class BillsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @bills = Bill.all
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(params[:bill])
    if @bill.save
      redirect_to bills_path, notice: "Bill #{@bill.material} Created"
    else
      render :new
    end
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    if @bill.update_attributes!(params[:bill])
      redirect_to bills_path, notice: "Bill #{@bill.material} Updated"
    else
      render :edit
    end
  end

  def destroy
    bill = Bill.find(params[:id])
    bill.destroy
    redirect_to :back, notice: "Bill #{bill.material} deleted."
  end

end
