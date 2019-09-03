#class for Model1 goes here
#Feel free to change the name of the class
class Driver
    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def passenger_names
        Ride.all.select{|x| x.driver == self}.mapP{|y| y.passenger.name}.uniq
    end

    def rides
        Ride.all.select{|x| x.driver == self}
    end 

    def self.all
        @@all
    end

    def total_miles
        rides.map{|x| x.distance}.sum
    end

    def self.mileage_cap(num)
        @@all.select{|x| x.total_miles > num}
    end
    
end
