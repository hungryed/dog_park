# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "MyString"
    last_name "MyString"
    email "MyString@email.com"
  end
end
