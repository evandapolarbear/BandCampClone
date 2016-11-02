class Api::SessionsController < ApplicationController
  def create
    @artist = Artist.find_by_credentials(
      params[:artist][:username],
      params[:artist][:password])

    if @artist
      login(@artist)
      render 'api/artists/show'
    else
      render(json: ['Invalid username/password combination'], status:401)
    end
  end

  def destroy
    @artist = current_artist
    if @artist
      logout
      redirect_to 'static_pages/root'
    else
      render(json: ["No one to LogOut."], status: 404)
    end
  end
end
