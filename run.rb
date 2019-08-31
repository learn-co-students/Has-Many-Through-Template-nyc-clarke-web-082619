require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"
require 'pry'

chess = Club.new('Chess', 'Academic')
forensics = Club.new('Forensics', 'Academic')
drama = Club.new('Drama', 'Art')
jazzband = Club.new('Jazz Band', 'Art')
bowling = Club.new('Bowling', 'Athletic')
pingpong = Club.new('Ping Pong', 'Athletic')

beth = Student.new('Beth', 9)
cindy = Student.new('Cindy', 9)
tom = Student.new('Tom', 10)
bill = Student.new('Bill', 10)
erica = Student.new('Erica', 11)
leslie = Student.new('Leslie', 11)
eric = Student.new('Eric', 12)
greg = Student.new('Greg', 12)

mem1 = Membership.new(15, beth, chess)
mem2 = Membership.new(15, cindy, forensics)
mem3 = Membership.new(15, tom, drama)
mem4 = Membership.new(15, bill, jazzband)
mem5 = Membership.new(15, erica, bowling)
mem6 = Membership.new(15, leslie, pingpong)
mem7 = Membership.new(15, eric, drama)
mem8 = Membership.new(15, greg, jazzband)
mem9 = Membership.new(15, greg, pingpong)
mem10 = Membership.new(15, cindy, chess)
mem11 = Membership.new(15, bill, jazzband)


binding.pry

puts "Thanks for clubbing it up."