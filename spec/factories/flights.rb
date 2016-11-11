# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flight do
    
    date "2016-11-11"
    duration "6:03:24"

    after(:build) do |flight|
      flight.from = build(:airport, code: "NYC")
      flight.to =  build(:airport, code: "SFO")
    end
  end
end
