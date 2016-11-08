require "byebug"

class Api::SongsController < ApplicationController
  def index
    @artist_being_viewed = Artist.find_by(id: params[:song][:artist_id])

    if @artist_being_viewed
      @songs = @artist_being_viewed.songs
    end

    if @songs
      render 'api/songs/index'
    else
      render(json: ["No Artist."], status: 404)
    end
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      render 'api/songs/show'
    else
      render (json: @song.errors.full_messages, status: 422)
    end

  end

  private
  def song_params
    params.require(:song).permit(:title, :url, :artist_id)
  end
end
