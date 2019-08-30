require_relative "lib/Magazine.rb"
require_relative "lib/Subscription.rb"
require_relative "lib/Person.rb"
require "pry"

magazine1 = Magazine.new("Vogue", 10)
magazine2 = Magazine.new("People", 40)
magazine3 = Magazine.new("Reader's Digest", 20)
magazine4 = Magazine.new("The New Yorker", 30)
magazine5 = Magazine.new("National Geographic", 15)

person1 = Person.new("Megan", 100)
person2 = Person.new("Jeff", 80)
person3 = Person.new("Ori", 30)
person4 = Person.new("Kayla", 25)
person5 = Person.new("Erin", 60)

subsciption1 = Subscription.new(magazine1, person1)
subsciption2 = Subscription.new(magazine1, person2)
subsciption3 = Subscription.new(magazine2, person3)
subsciption4 = Subscription.new(magazine4, person4)
subsciption5 = Subscription.new(magazine5, person5)
subsciption6 = Subscription.new(magazine5, person1)
subsciption7 = Subscription.new(magazine3, person4)

binding.pry
