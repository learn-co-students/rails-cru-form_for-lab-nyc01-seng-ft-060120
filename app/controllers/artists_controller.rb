class ArtistsController < ApplicationController

  def index
    @artists = Artist.all 
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    @artist = Artist.new
  end

  def update
    @artist = Artist.new
    @artist.update(artist_params)
    redirect_to @artist
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
