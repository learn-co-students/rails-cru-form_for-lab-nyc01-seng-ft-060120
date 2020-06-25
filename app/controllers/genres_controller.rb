class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :update, :edit]

    def index 
        @genres = Genre.all
    end
    def show 
    end

    def edit 
    end

    def create 
        @genre = Genre.create(genre_params(:name))
        redirect_to genre_path(@genre)
    end 

    def new 
        @genre = Genre.new 
    end

    def update 
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    def set_genre 
        @genre = Genre.find(params[:id])
    end

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
end
