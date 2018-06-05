FactoryBot.define do
  factory :user do
  	email {FFaker::Internet.email}
  	name {FFaker::NameMX.full_name}
  	password 'password'
  	location {FFaker::Address.city}
  	bio {FFaker::Lorem.sentences}
  	username {FFaker::NameMX.name}

  	after(:build) do |user|
  		[:goodmorning, :goodevening].each do |tweet|
  			user.tweets << FactoryBot.build(:goodevening, user: user)
  		end	
  	end
    
  end
end
