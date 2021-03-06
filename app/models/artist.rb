class Artist < ApplicationRecord
  attr_reader :password
  # attr_accessor :image_url, :banner_url

  validates :username, :password_digest, :session_token, :banner_url, :image_url, :email, presence: true;
  validates :username, uniqueness: true
  validates :password, length: {minimum: 6}, allow_nil: :true

  after_initialize :ensure_session_token
  before_validation :ensure_session_token_uniq

  has_many :songs


  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end


  def self.find_by_credentials(username, password)
    @artist = Artist.find_by(username: username)
    return nil unless @artist
    @artist.is_password?(password) ? @artist : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    ensure_session_token_uniq
    self.save
    self.session_token
  end


  private
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def ensure_session_token_uniq
    while Artist.find_by(session_token: self.session_token)
      self.session_token = SecureRandom.urlsafe_base64
    end
  end

  # def fill_in_defaults
  #   self.image_url = 'http://www.sessionlogs.com/media/icons/defaultIcon.png'
  #   self.banner_url = 'http://wallpapersdsc.net/wp-content/uploads/2016/09/Coffee-Beans-Wallpaper.jpg'
  # end

end
