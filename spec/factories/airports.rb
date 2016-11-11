# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :airport do
    code "MyString"
    state "Some state"
    country "United States"
  end
end
