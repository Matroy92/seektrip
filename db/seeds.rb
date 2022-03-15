puts "Cleaning database..."
Trip.destroy_all

puts "Creating trips..."
first_trip = { name: "Family trip in Florida", address: "Fort Myers", starting_date: 23/11/21, ending_date: 02/12/21 }
second_trip = { name: "bagpacking in Colombia", address: "Bogota", starting_date: 12/12/21, ending_date: 05/01/22 }


[ first_trip, second_trip ].each do |attributes|
  trip = Trip.create!(attributes)
  puts "Created #{trip.name}"
end
puts "Finished!"
