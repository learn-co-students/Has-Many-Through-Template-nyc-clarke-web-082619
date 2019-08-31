require 'pry'

class Student

  attr_reader :name, :current_grade
  @@all = []

  def initialize(name, current_grade)
    @name = name 
    @current_grade = current_grade
    @@all << self 
  end 

  def self.all
    @@all 
  end

  def self.find_by_grade(grade)
    self.all.select{|stud| stud.current_grade == grade}
  end

  def clubs
    Membership.all.select{|mem| mem.student == self }
  end

  def club_types
    clubs.map{|club| club.club.type}
  end

  def join_club(dues, club)
    Membership.new(dues, self, club)
  end

end
