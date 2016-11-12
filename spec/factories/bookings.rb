# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    
    after(:build) do |booking|
      booking.flight = create(:flight)
      booking.passenger = create(:passenger)
    end
  end
end
