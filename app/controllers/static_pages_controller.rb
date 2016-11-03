class StaticPagesController < ApplicationController
  def root
    @artist = current_artist

    if @artist
      gon.jbuilder 'app/views/api/artists/show.json.jbuilder'
    end
  end
end
