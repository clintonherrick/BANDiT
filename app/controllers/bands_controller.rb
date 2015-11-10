class BandsController < ApplicationController
  before_action :find_band, only: [:show]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:genre].blank?
    @bands = Band.all.order("created_at DESC")
  else
    @genre_id = Genre.find_by(name: params[:genre]).id
    @Bands = Band.where(genre_id: @genre_id).order("created_at DESC")
  end
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
  params. require(:band).permit(:title, :content, :genre_id)

  end


end
