class CamerasController < ApplicationController
  before_action :check_for_login

  def index
  end

  def new
    @camera = Camera.new
  end

  def create
    camera = Camera.create camera_params
    @current_user.cameras << camera
    redirect_to camera
  end

  def edit
  end

  def show
  end

  private
  def camera_params
    params.require(:camera).permit(:name, :brand, :details, :price, :image)
  end
end
