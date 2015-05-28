FactoryGirl.define do
	factory :comment do
		message "This is a comment"
		rating "1_star"
		association :user
		association :place
	end

	factory :place do
		name "This is a comment"
		description "This is a place"
		address "1 Main st Portland, ME"
		association :user
	end

	factory :user do
    	sequence :email do |n|
      	"heyheyhey#{n}@gmail.com"
    	end
    	password "password"
    	password_confirmation "password"
  	end
end