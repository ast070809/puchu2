FactoryGirl.define do
	factory :user do
		first_name "Atul"
		last_name "Tirkey"
		email "atul@example.com"
		password "foobar123"
		password_confirmation "foobar123"
	end

	factory :education do
		degree "B.A"
		deg_type "degree type" 
		deg_time "degree time"
		year "2013"
		subject "option1"
		user_id 1
		college_id 1
	end
end