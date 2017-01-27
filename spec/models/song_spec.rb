require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "It rejects invalid Songs" do
    let(:song_no_url) { Song.new(artist_id: 3) }
    let(:song_no_id) { Song.new(url: "fake") }

    it "validates url" do
      expect(song_no_url).not_to be_valid
    end

    it "validates id" do
      expect(song_no_id).not_to be_valid
    end
  end
end
