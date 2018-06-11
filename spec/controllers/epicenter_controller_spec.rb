require 'rails_helper'

RSpec.describe EpicenterController, type: :controller do

  describe "GET #feed" do
    it "returns http success" do
      get :feed
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show_user" do
    it "returns http success" do
      get :show_user
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #now_following" do
    it "returns http success" do
      get :now_following
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #unfollow" do
    it "returns http success" do
      get :unfollow
      expect(response).to have_http_status(:success)
    end
  end

end
