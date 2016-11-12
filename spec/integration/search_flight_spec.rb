require 'rails_helper'

feature "Search Flight" do

    scenario "Searching NYC to SFO returns flight" do
      flight = create(:flight)

      visit flights_path
      select 'NYC', from: 'from'
      select 'SFO', from: 'to'
      click_button "Search"
      expect(page).to have_content("Available Flights")
      choose('flight_1') # Radio button for flight id
      click_button "Book Flight"
      expect(page).to have_content(flight.from.code)
      expect(page).to have_content("Booking Information")
    end

end