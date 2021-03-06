require "rails_helper"

RSpec.describe User, type: :model do
	let(:user) { build(:user) }
	let(:user_with_tweets) { build(:user_with_tweets) }

	it 'has a valid factory' do
		expect(build(:user)).to be_valid
	end

  it 'is valid with required attributes' do
  	#user = User.new(email: 'jojo@mojo.com', password: 'xnsaadlahdh98lkjad', name: 'Mojo Jojo', username: 'mojojojo', bio: 'crazy evil genius monkey', location: 'Townsville')
  	expect(user).to be_valid
  end

  it 'is invalid without a username' do
  	user.username = nil
  	#user = User.new(email: 'jojo@mojo.com', password: 'xnsaadlahdh98lkjad', name: 'Mojo Jojo', username: nil, bio: 'crazy evil genius monkey', location: 'Townsville')
		expect(user).not_to be_valid
	end

	it 'is invalid without a unique username' do
		user.save
		other_user = build(:user, email: user.email)
		other_user.valid?
		expect(other_user.errors[:email]).to include('has already been taken')
	end

	it 'is invalid without an email' do
  	user.email = nil
  	#user = User.new(email: nil, password: 'xnsaadlahdh98lkjad', name: 'Mojo Jojo', username: 'mojojojo', bio: 'crazy evil genius monkey', location: 'Townsville')
		expect(user).not_to be_valid
	end

	it 'is invalid without a password' do
		user.password = nil
		#user = User.new(email: 'jojo@jojo.com', password: nil, name: 'Mojo Jojo', username: 'mojojojo', bio: 'crazy evil genius monkey', location: 'Townsville')
		expect(user).not_to be_valid
	end

	it 'has two tweets' do
		expect(user_with_tweets.tweets.length).to eq(2)
	end

	it 'belongs to User' do
		expect(Tweet.reflect_on_association(:user).macro).to eq(:belongs_to)
	end

end
