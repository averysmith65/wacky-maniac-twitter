require 'rails_helper'

RSpec.describe TweetsController, type: :controller do

	include Devise::Test::ControllerHelpers
	#let(:user) { build(:user) }
	describe "GET #index" do
		it 'renders the tweets index template' do
      user = create(:user)
      sign_in user
      get :index
      expect(response).to render_template(:index)
      #response represents the finished product from our controller action
    end


	end

end