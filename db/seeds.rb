Airport.create!(code: "NYC",
                state: "New York",
                country: "United States")
Airport.create!(code: "SFO",
                state: "California",
                country: "United States")

Flight.create!(from: Airport.first,
               to: Airport.find(2),
               date: 4.months.from_now,
               duration: 21600 )
Flight.create!(from: Airport.find(2),
               to: Airport.first,
               date: 5.months.from_now,
               duration: 21600 )

Flight.create!(from: Airport.first,
               to: Airport.find(2),
               date: 9.months.from_now,
               duration: 21600 )