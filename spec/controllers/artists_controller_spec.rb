require 'rails_helper'

RSpec.describe Api::ArtistsController, type: :controller do
  # describe "GET index" do
  #   it "returns 200 at home" do
  #     get :index, artist: {username: nil}
  #
  #     expect(response).to have_http_status(200)
  #   end
  # end

  describe "post create" do
    context "invalid" do
      it "validates password exits" do
        post :create, artist:{username: "test", password: ""}
        expect(response).to have_http_status(422)
      end

      it "validates that the password is at least 6 characters long" do
        post :create, artist: {username: "jack_bruce", password: "short"}
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "get show" do

  end
end
