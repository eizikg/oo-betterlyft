class Ride
attr_reader :driver, :passenger, :distance

@@all = []

def initialize (driver, passenger, distance)
@driver = driver
@passenger = passenger
@distance = distance
@@all << self
end

def self.all
  @@all
end

def self.average_distance
  sum = 0
@@all.each do |ride|
  sum += ride.distance
end
average= sum / @@all.count
average.round(2)
end



end
