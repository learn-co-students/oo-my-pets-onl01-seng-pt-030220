class Owner

  @@all = []

  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select {|cats| cats.owner == self}
  end

  def dogs
    Dog.all.select {|dogs| dogs.owner == self}
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    exercised_dog = Dog.all.find {|dogs| dogs.owner == self}
    exercised_dog.mood = "happy"
  end

  def feed_cats
    fed_cat = Cat.all.find {|cats| cats.owner == self}
    fed_cat.mood = "happy"
  end

  def sell_pets
    Cat.all.each do |cats|
      cats.mood = "nervous"
      cats.owner = nil
    end
    Dog.all.each do |dogs|
      dogs.mood = "nervous"
      dogs.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
