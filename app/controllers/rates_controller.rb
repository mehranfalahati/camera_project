class RatesController < ApplicationController
  before_action :check_for_login
  def index
    @rates = Rate.all
  end

  def new
    @rate = Rate.new
  end

  def create
    rate = Rate.create rate_params
    @current_user.rates << rate
    redirect_to rate
  end

  def edit
    @rate = Rate.find params[:id]
  end

  def update
    rate = Rate.find params[:id]
    rate.update rate_params
    redirect_to rate
  end

  def show
    @rate = Rate.find params[:id]
  end

  def destroy
    rate = Rate.find params[:id]
    rate.destroy
    redirect_to rate
  end

  private
  def rate_params
    params.require(:rate).permit(:name, :comment)
  end
end
