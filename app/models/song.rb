class Song < ApplicationRecord
  validates :artist_id, :url, :title, presence: true

  belongs_to :artist
end
