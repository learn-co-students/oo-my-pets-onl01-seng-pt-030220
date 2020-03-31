require 'pry'

class Owner

  attr_reader :name,:species

 @@all =[]
 @@count=0
  def initialize(name)
    @name=name
    @species ="human"
    @@all << self
    @@count +=1
  end

  # code goes here
  def species
     @species
  end

  def say_species
      "I am a #{@species}."
  end

  def self.all
     @@all
  end

  def self.count
     @@count
  end
  def self.reset_all
    @@count =0
  end

  def cats
     Cat.all.select do |cat|
      cat.owner == self
     end
  end

  def dogs
      Dog.all.select do |dog|
       dog.owner == self
      end
  end

  def buy_cat(name)
      Cat.new(name,owner=self)
  end

  def buy_dog(name)
      Dog.new(name,dogs=self)
  end
  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end
  def feed_cats
      Cat.all.each do |cat|
        cat.mood = "happy"
      end
  end

  def sell_pets
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
     Cat.all.each do |cat|
        cat.mood = "nervous"
        cat.owner = nil
     end
   end

   def list_pets
    
      "I have #{cats.count} dog(s), and #{dogs.count} cat(s)."
   end


end
