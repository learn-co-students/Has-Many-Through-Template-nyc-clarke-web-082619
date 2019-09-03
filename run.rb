require "pry"

require_relative "lib/driver.rb"
require_relative "lib/passenger.rb"
require_relative "lib/ride.rb"


d1 = Driver.new("d1")
d2 = Driver.new("d2")
d3 = Driver.new("d3")

p1 = Passenger.new("p1")
p2 = Passenger.new("p2")
p3 = Passenger.new("p3")
p4 = Passenger.new("p4")
p5 = Passenger.new("p5")
p6 = Passenger.new("p6")

r1 = Ride.new(p1,d1,50)
r2 = Ride.new(p1,d2,10)
r3 = Ride.new(p1,d3,70)

r4 = Ride.new(p2,d3,90)
r5 = Ride.new(p2,d3,2)
r6 = Ride.new(p2,d2,31)
r7 = Ride.new(p2,d2,17)
r8 = Ride.new(p2,d1,5)

r9 = Ride.new(p3,d1,8)
r10 = Ride.new(p3,d1,11)

binding.pry
