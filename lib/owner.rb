require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

  #Brittany = Owner.new("Brittany")
  #johnny = Dog.new("johnny", "Brittany", "nervous")
  #Brittany.buy_dog("johnny")
  #Brittany.walk_dogs

  def walk_dogs #walk a dog - mood changes to happy
      # puts "Im already happy i dont need a walk"
    # else
    #   puts "THank fot the walk now im happy"

    self.dogs.each {|dog| dog.mood = "happy" }

  end


  def feed_cats #walk a dog - mood changes to happy
      # puts "Im already happy i dont need a walk"
    # else
    #   puts "THank fot the walk now im happy"

    self.cats.each {|cat| cat.mood = "happy" }
  end


  def sell_pets
     pets = self.dogs + self.cats
     pets.each do |pet|
       pet.mood = "nervous"
       pet.owner = nil
     end
  end
  # def sell_pets
  #   # pets = [] #cats and dogs
  #   self.cats.each {|cat|
  #     if cat.mood = "nervous"
  #       #remove from owner all and return to cat all
  #       self.clear(cat)
  #       binding.pry
  #       self << cat
  #     end
  #   }

    # if self.dogs.each {|dog| dog.mood = "nervous" }


    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end



  def self.reset_all
    self.all.clear
  end
end

# brittany = Owner.new("Brittany")
# nikelson = Owner.new("Nikelson")
# johnny = Cat.new("Johnny", nikelson, "happy")
# casey = Cat.new("Casey", nikelson, "nervous")
# nikelson.buy_cat(johnny)
# nikelson.buy_cat(casey)
# nikelson.list_pets
