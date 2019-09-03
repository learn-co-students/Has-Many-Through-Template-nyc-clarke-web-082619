#class for Model2 goes here
#Feel free to change the name of the class
class Passenger
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def rides 
        Ride.all.select{|x| x.passenger == self}
    end

    def drivers 
        rides.map{|x| x.driver}.uniq
    end

    def total_distance 
        rides.map{|x| x.distance}.sum
    end

    def self.all
        @@all
    end 

    def self.premium_members
        @@all.select{|x| x.total_distance > 100}
    end 
    

end
