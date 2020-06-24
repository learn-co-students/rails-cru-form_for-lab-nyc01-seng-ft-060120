class SongsController < ApplicationController
    before_action :set_song, :only => [:show, :edit, :update]

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def show
    end

    def create
        @song = Song.create(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def edit
    end

    def update
        @song.update(song_params(:name))
        redirect_to song_path(@song)
    end

    private 
    def song_params(*args)
        params.require(:song).permit(*args)
    end

    def set_song
        @song = Song.find(params[:id])
    end

end