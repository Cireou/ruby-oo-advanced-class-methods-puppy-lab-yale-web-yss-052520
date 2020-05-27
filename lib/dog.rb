require 'pry'
class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        #binding.pry()
        @name = name
        save()
    end

    def self.all()
        @@all
    end

    def self.clear_all()
        self.all().clear()
    end

    def self.print_all()
        self.all().each {|dog| puts(dog.name)}
    end
    
    def save()
        self.class.all() << self
    end

    
end
