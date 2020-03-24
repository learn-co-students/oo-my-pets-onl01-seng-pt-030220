class Owner
  
  attr_reader :name, :cats, :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @cats = []
    @dogs = []
  end

  def species
    "human"
  end
  
  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@all = []
  end

  def add_cat(cat)
    @cats << cat
  end

  def add_dog(dog)
    @dogs << dog
  end

  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each(&:walk)
  end
  
  def feed_cats
    cats.each(&:feed)
  end

  def sell_pets
    cats.each(&:sell)
      @cats = []
    dogs.each(&:sell)
      @dogs = []
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end