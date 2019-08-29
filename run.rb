require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"

require 'pry'

student1 = Student.new("Melvin")
student2 = Student.new("Alice")
student3 = Student.new("Steerpike")

club1 = Club.new("Chess Club")
club2 = Club.new("Outdoors Club")

membership1 = Membership.new(student1, club1, 'President')
membership2 = Membership.new(student2, club1, 'Treasurer')
membership3 = Membership.new(student2, club2, 'President')
membership4 = Membership.new(student3, club1, 'Novice')
membership5 = Membership.new(student3, club2, 'Master of Arms')


binding.pry