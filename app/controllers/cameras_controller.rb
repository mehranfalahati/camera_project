class CamerasController < ApplicationController
  before_action :check_for_login

  def index
    @cameras = Camera.all
  end

  def new
    @camera = Camera.new
  end

  def create
    camera = Camera.create camera_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      camera.image = req["public_id"]
      camera.save
    end
    @current_user.cameras << camera
    redirect_to camera
  end

  def edit
    @camera = Camera.find params[:id]
  end

  def update
    camera = Camera.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      camera.image = req["public_id"]
    end
    camera.update_attributes(camera_params)
    camera.save
    redirect_to camera
  end

  def show
    @camera = Camera.find params[:id]
  end

  def destroy
    camera = Camera.find params[:id]
    camera.destroy
    redirect_to camera
  end

  private
  def camera_params
    params.require(:camera).permit(:name, :brand, :details, :price, :image)
  end
end
