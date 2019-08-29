#class for Model1 goes here
#Feel free to change the name of the class
class Club

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def memberships
        Membership.all.select {|mem| mem.club == self}
    end

    def students
        memberships.map {|mem| mem.student}
    end

    def change_rank(student, new_rank)
        memberships.each do |mem|
            mem.rank = new_rank if mem.student == student
        end
    end

    def roster
        memberships.map do |mem|
            mem.student.name + ", " + mem.rank
        end
    end

end
