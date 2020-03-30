class Owner

  attr_accessor

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, species = "human")
    @name = name
    @species= species
    @@all << self
  end

  def buy_cat(name)
    new_cat = Cat.new(name, owner = self)
    @name = name
    @owner = owner
  end

  def buy_dog(name)
    new_dog = Dog.new(name, owner = self)
    @name = name
    @owner = owner
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

  def name
    @name
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

end
