#class for Model2 goes here
#Feel free to change the name of the class
class Subscription

    attr_reader :magazine, :person

    @@all = []

    def self.all
        @@all
    end

    def initialize(magazine, person)
        @magazine = magazine
        @person = person
        @@all << self
    end


end
