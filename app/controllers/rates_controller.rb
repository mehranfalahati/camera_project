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
    Camera.find(params[:rate][:camera_id]).rates << rate
    camera = Camera.find(params[:rate][:camera_id])
    redirect_to camera_path(camera)
  end

  def edit
    @rate = Rate.find params[:id]
  end

  def update
    rate = Rate.find params[:id]
    rate.update rate_params
    camera = Camera.find(params[:rate][:camera_id])
    redirect_to camera_path(camera)
    redirect_to rate
  end

  def show
    @rate = Rate.find params[:id]
  end

  def destroy
    rate = Rate.find params[:id]
    rate.destroy
    raise 'hell'
    redirect_to cameras_path
  end

  private
  def rate_params
    params.require(:rate).permit(:name, :comment, :camera_id)
  end
end
