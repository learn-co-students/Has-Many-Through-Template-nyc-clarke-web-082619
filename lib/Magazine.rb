#class for Model1 goes here
#Feel free to change the name of the class
class Magazine

    attr_accessor :name, :price, :revenue

    @@all = []

    def initialize(name, price)
        @name = name
        @price = price
        @revenue = 0
        @@all << self
    end

    def self.all
        @@all 
    end

    def new_subscription(person)
        if person.budget >= self.price && !subscribers.include?(person)
            Subscription.new(self, person)
            @revenue += @price
            person.budget -= @price
            "#{person.name} bought #{@name}. #{@name}'s revenue is #{@revenue}"
        elsif subscribers.include?(person)
            "#{person.name} is already subscribed to #{@name}."
        else
            "#{person.name} can't afford #{@name}!"
        end

    end

    def subscriptions
        Subscription.all.select {|subscription| subscription.magazine == self}
    end

    def subscribers
        subscriptions.map {|subscription| subscription.person}
    end
end
