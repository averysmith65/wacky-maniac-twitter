require 'rails_helper'

RSpec.describe Tweet, type: :model do
  it 'has a valid factory' do
  	expect(FactoryBot.build(:goodmorning)).to be_valid
  end

  it 'is valid with required attributes' do
  	tweet = create(:goodmorning)
  	expect(tweet).to be_valid
  end

  it 'is invalid without a message' do
  	tweet = build(:goodevening, message: nil)
  	expect(tweet).not_to be_valid
  end

  it 'is invalid without a user_id' do
  	tweet = build(:goodmorning, user_id: nil)
  	expect(tweet).not_to be_valid
  end

end
