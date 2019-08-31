require 'pry'

class Club
  attr_accessor :club_name, :type
  @@all = []

  def initialize(club_name, type)
    @club_name = club_name
    @type = type 
    @@all << self 
  end

  def self.all
    @@all
  end

  def self.find_by_type(discipline)
    self.all.select{|club| club.type == discipline}
  end

  def self.biggest_club
    self.all.max_by{|club| club.students.length}
  end

  def members
    Membership.all.select{|mem| mem.club == self}
  end

  def students
    members.map{|mem| mem.student}
  end

  def number_of_members
    students.length
  end

end
