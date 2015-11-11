class BandsController < ApplicationController
  before_action :find_band, only: [:show, :destroy, :update, :edit]
  before_action :authenticate_user!, except: [:index, :show, :edit, :update, :destroy]

  def index
    if params[:genre].blank?
    @bands = Band.all.order("created_at DESC")
  else
    @genre_id = Genre.find_by(name: params[:genre]).id
    @bands = Band.where(genre_id: @genre_id).order("created_at DESC")
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

  def edit
  end

  def update
    if @band.update(band_params)
      redirect_to @band
    else
      render 'edit'
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to root_path
  end

  private

  def find_band
    @band = Band.find(params[:id])
  end

  def band_params
  params. require(:band).permit(:title, :content, :genre_id)

  end


end
