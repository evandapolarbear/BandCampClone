require 'byebug'

class Api::ArtistsController < ApplicationController
  def index
    @search = params[:artist][:username]

    @artists = Artist.where("username LIKE :search", search: "%#{params[:artist][:username]}%")

    if params[:artist][:username] == ''
      @artists = nil
    end

    if @artists
      render "api/artists/index"
    else
      render json: ['no artist found'], status: 404
    end
  end


  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      login(@artist)
      render "api/artists/show"
    else
      render json: @artist.errors.full_messages, status: 422
    end
  end

  def show
    @artist = Artist.find_by( id: params[:id])

    if @artist
      render "api/artists/show"
    else
      render json: ['no artist found'], status: 404
    end
  end

  def update
    if logged_in?
      @artist = current_artist
      if @artist.update_attribute(artist_params.keys[0], artist_params.values[0])
        render "api/artists/show"
      else
        render json: @artist.errors.full_messages, status: 422
        # render "api/artist/show"
      end
    end
  end

  private
  def artist_params
    params.require(:artist).permit(:username, :password, :email, :banner_url, :image_url, :id)
  end
end
