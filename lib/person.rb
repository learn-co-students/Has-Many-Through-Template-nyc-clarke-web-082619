#class for Model3 goes here
#Feel free to change the name of the class
class Person
  attr_reader :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

end
