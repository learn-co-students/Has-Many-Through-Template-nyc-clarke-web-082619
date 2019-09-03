#class for Model3 goes here
#Feel free to change the name of the class
class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        @@all.map{|x| x.distance}.sum.to_f/(@@all.length)
    end
    
  
end
