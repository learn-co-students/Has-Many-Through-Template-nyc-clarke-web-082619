#class for Model2 goes here
#Feel free to change the name of the class
class Student
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def join_club(club, rank)
        Membership.new(self, club, rank)
    end

    def memberships
        Membership.all.select {|mem| mem.student == self}
    end

    def clubs
        memberships.map do |mem|
            mem.club
        end
    end

    def club_ranks
        memberships.map do |mem|
            mem.rank + " of " + mem.club.name
        end
    end
end
