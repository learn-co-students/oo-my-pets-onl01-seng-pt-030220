require 'pry'
class Owner

  @@all = []

  def self.all
    # knows about all pets
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def species
    @species = 'human'
  end

  def say_species
    'I am a human.'
  end

  def cats
    Cat.all.select do |my_cats| my_cats.owner == self
    end
  end

  def dogs
    Dog.all.select do |my_dogs| my_dogs.owner == self
    end
  end

  def buy_cat(cat_to_buy)
    # able to buy pet
    self.cats << Cat.new(cat_to_buy, self)
  end

  def buy_dog(dog_to_buy)
    # able to buy pet
    self.dogs << Dog.new(dog_to_buy, self)
  end

  def walk_dogs
    # change a pets mood (walking or feeding it)
    self.dogs.each do |each_dog|
      each_dog.mood = 'happy'
    end
  end

  def feed_cats
    # change a pets mood (walking or feeding it)
    self.cats.each do |each_cat|
      each_cat.mood = 'happy'
    end
  end

  def sell_pets
    # sell all of their pets
    # change pets mood
   all_cats = self.cats
   all_dogs = self.dogs

   all_cats.each do |each_cat|
    each_cat.mood = 'nervous'
    each_cat.owner = nil
   end

   all_dogs.each do |each_dog|
    each_dog.mood = 'nervous'
    each_dog.owner = nil
   end
   all_dogs.clear
   all_cats.clear 
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end