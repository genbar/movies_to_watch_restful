class MoviesController < ApplicationController
  def edit
    @movie = Movie.find(params["id"])
  end

  def update
    @movie = Movie.find(params["id"])

    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["description"]
    @movie.image_url = params["image_url"]
    @movie.director = params["director"]

    @movie.save

    redirect_to "http://localhost:3000/movies/#{@movie.id}"
  end

  def create
    @movie = Movie.new

    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["description"]
    @movie.image_url = params["image_url"]
    @movie.director = params["director"]

    @movie.save

    redirect_to "http://localhost:3000/movies"
  end

  def new
  end

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params["id"])
  end

  def destroy
    @movie = Movie.find(params["id"])

    @movie.destroy

    redirect_to "http://localhost:3000/movies"
  end

end
