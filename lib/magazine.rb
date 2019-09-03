#class for Model2 goes here
#Feel free to change the name of the class
class Magazine

    attr_reader :name
    @@all = []

    def initialize(name, price)
        @name = name
        @price = price
        @@all << self      
    end

    def new_subscriber(person, date)
        Subscription.new(self, person, date)
    end

    def subscriptions
        Subscription.all.select {|subscription| subscription.magazine == self}
    end

    def subscribers
        subscriptions.collect {|subscription| subscription.person}
    end

    def average_age
        subscribers_age = []
        subscribers.each do |subscriber|
            subscribers_age << subscriber.age
        end
        subscribers_age.sum/subscribers_age.length
    end

    def total_revenue
        subscribers.length * @price
    end

    def self.all
        @@all
    end
end
