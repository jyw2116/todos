FactoryGirl.define do
  factory :todo do
  	# owner_email 'person@example.com'
  	sequence(:owner_email) {|n| "person#{n}@example.com"}
  end
end
