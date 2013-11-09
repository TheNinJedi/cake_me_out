# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gallery do
    cake_name "MyString"
    type ""
    description "MyText"
    completed_at "2013-11-08"
    servings 1
  end
end
