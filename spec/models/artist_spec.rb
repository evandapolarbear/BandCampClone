require 'rails_helper'

RSpec.describe Artist, type: :model do
  let(:artist_no_name) { Artist.new(email: "fake",
                                    password_digest: "fake",
                                    session_token: "fake",
                                    image_url: "fake",
                                    banner_url: "fake")}

  let(:artist_no_email) { Artist.new(username: "fake",
                                    password_digest: "fake",
                                    session_token: "fake",
                                    image_url: "fake",
                                    banner_url: "fake")}

  let(:valid_artist) { Artist.new(email: "fake",
                                    password_digest: "fake",
                                    session_token: "fake",
                                    username: "fake",
                                    banner_url: "fake",
                                    image_url: "fake")}

  describe "rejects invalid artist" do
    it "validates username" do
      expect(artist_no_name).not_to be_valid
    end

    it "validates email" do
      expect(artist_no_email).not_to be_valid
    end


    it "accepts valid artist" do
      expect(valid_artist).to be_valid
    end
  end

end
