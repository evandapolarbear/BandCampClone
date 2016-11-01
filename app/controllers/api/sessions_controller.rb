class Api::SessionsController < ApplicationController
  def create
    @artist = Artist.find_by_credentials(
      params[:artist][:username],
      params[:artist][:username])

    if @artist
      login(@artist)
      render 'api/artist/show'
    else
      render(['Invalid username/password combination'], status:401)
    end

    def destroy
      @artist = current_artist
      if @artist
        logout
        render "root"
      else
        render(json: ["Noone to LogOut."], status: 404)

  end
end
