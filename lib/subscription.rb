#class for Model1 goes here
#Feel free to change the name of the class
class Subscription

    attr_reader :magazine, :person, :date
    @@all = []

    def initialize(magazine, person, date)
        @magazine = magazine
        @person = person
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end

end
