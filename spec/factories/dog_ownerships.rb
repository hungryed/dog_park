# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dog_ownership do
    association :dog
    association :owner
  end
end
