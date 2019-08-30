#class for Model3 goes here
#Feel free to change the name of the class
class Person

    @@all = []

    attr_accessor :name, :budget

    def self.all
        @@all
    end

    def initialize(name, budget)
        @name = name
        @budget = budget
        @@all << self
    end

    def buy_magazine(magazine)
        if magazine.price <= @budget && !magazines.include?(magazine)
            Subscription.new(magazine, self)
            magazine.revenue += magazine.price
            @budget -= magazine.price
            "#{@name} bought #{magazine.name}. #{@name} has #{@budget} dollars left."
        elsif magazines.include?(magazine)
            "#{@name} already has #{magazine.name}!"
        else
            "#{@name} can't afford #{magazine.name}!"
        end
    end

    def subscriptions
        Subscription.all.select {|subscription| subscription.person == self}
    end

    def magazines
        subscriptions.map {|subscription| subscription.magazine}
    end
  
end
