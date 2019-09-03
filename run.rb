require 'pry'
require_relative "lib/magazine.rb"
require_relative "lib/person.rb"
require_relative "lib/subscription.rb"

person1 = Person.new("Larry", 31)
person2 = Person.new("Leo", 5)
person3 = Person.new("Alex", 4)

magazine1 = Magazine.new("Fun", 20)

magazine1.new_subscriber(person1, "2019/9/2")
magazine1.new_subscriber(person2, "2019/9/1")

binding.pry