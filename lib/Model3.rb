#class for Model3 goes here
#Feel free to change the name of the class
class Membership
    attr_reader :student, :club
    attr_accessor :rank

    @@all = []
    def initialize(student, club, rank)
        @student = student
        @club = club
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end

end
