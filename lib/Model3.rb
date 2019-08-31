require 'pry'

class Membership
  attr_reader :student, :club 
  attr_accessor :dues
  @@all = []

  def initialize(dues, student, club)
    @dues = dues
    @student = student 
    @club = club 
    @@all << self 
  end

  def self.all
    @@all 
  end

  def self.total_dues_collected
    self.all.map{|mem| mem.dues}.reduce(&:+)
  end
  
end
