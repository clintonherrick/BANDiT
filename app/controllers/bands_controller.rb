class BandsController < ApplicationController
  def index
  end

  def new
    @band = Band.new
  end


  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to @band
    else
      render 'new'
    end
  end

  private

  def band_params
  params. require(:band).permit(:title, :content)

  end


end
