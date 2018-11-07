class Driver
  attr_reader :name
  @@all =[]
def initialize (name)
  @name = name
  @@all << self
end

def self.all
  @@all
end


def rides
Ride.all.select do |ride|
  ride.driver == self
  end
end

def passenger_names
  rides.map do |ride|
    ride.passenger
  end.uniq
end

def driver_total
  sum = 0
 rides.each do |ride|
   sum += ride.distance
 end
 sum
end


def self.mileage_cap(distance)
  Driver.all.select do |driver|
   driver.driver_total >= distance
 end
end

end
