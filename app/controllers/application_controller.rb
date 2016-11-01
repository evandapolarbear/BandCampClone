class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_artist, :logged_in?

  def current_artist
    return nil unless session[:session_token]
    @current_artist ||= user.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_artist
  end

  def login(artist)
    artist.reset_session_token!
    session[:session_token] = artist.session_token
    @current_artist = artist
  end

  def logout
    current_artist.reset_session_token!
    session[:session_token] = nil
    @current_artist = nil
  end

  def require_log_in
    render json{base: ['invalid credentials']}, status: 401 if !current_artist
  end
end
