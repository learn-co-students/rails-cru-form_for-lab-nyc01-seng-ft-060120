class SongsController < ApplicationController
  before_action :set_song, :only => [:show, :edit, :update]
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to songs_path
  end

  def show
  end

  def edit
  end

  def update
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end
  def song_params(*args)
    params.require(:song).permit(args)
  end
end
