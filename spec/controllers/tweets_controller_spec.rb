require 'rails_helper'

RSpec.describe TweetsController, type: :controller do

	describe "GET #index" do
		it 'renders the tweets index template' do
      get :index
      expect(response).to render_template(:index)
      #response represents the finished product from our controller action
    end


	end

end