require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new ("bruce")
driver2 = Driver.new ("amir")
driver3 = Driver.new ("brian")

passenger1 = Passenger.new ("eizik")
passenger2 = Passenger.new ("jessie")
passenger3 = Passenger.new ("carlo")

ride1 = Ride.new(driver1, passenger1, 200 )
ride2 = Ride.new(driver2, passenger3, 150 )
ride3 = Ride.new(driver3, passenger1, 8.5 )
ride4 = Ride.new(driver1, passenger1, 2.5 )
ride5 = Ride.new(driver1, passenger2, 7.5 )
ride6 = Ride.new(driver3, passenger3, 3.5 )
ride7 = Ride.new(driver2, passenger1, 2.5 )


# Put your variables here~!

binding.pry
