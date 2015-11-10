class BandsController < ApplicationController
  before_action :find_band, only: [:show]

  def index
    @bands = Band.all.order("created_at DESC")
  end

  def show
  end

  def new
    @band = current_user.bands.build
  end


  def create
    @band = current_user.bands.build(band_params)
    if @band.save
      redirect_to @band
    else
      render 'new'
    end
  end

  private

  def find_band
    @band = Band.find(params[:id])
  end

  def band_params
  params. require(:band).permit(:title, :content)

  end


end
