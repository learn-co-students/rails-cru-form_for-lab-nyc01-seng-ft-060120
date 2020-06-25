class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :update, :edit]


    def show 
    end

    def edit 
    end

    def create 
        @artist = Artist.create(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end 

    def new 
        @artist = Artist.new 
    end

    def update 
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def set_artist 
        @artist = Artist.find(params[:id])
    end

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
