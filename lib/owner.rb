class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    save
    @cats = []
    @dogs = []
  end

  def say_species
     "I am a #{species}."
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def buy_cat(cat)
    newcat = Cat.new(cat,self)
  end

  def buy_dog(dog)
    newdog = Dog.new(dog,self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      if(dog.owner == self)
        dog.mood = "happy"
      end
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      if(cat.owner == self)
        cat.mood = "happy"
      end
    end
  end

  def sell_pets
    Dog.all.each do |dog|
      if(dog.owner == self)
        dog.mood = "nervous"
        dog.owner = nil
      end
    end

    Cat.all.each do |cat|
      if(cat.owner == self)
        cat.mood = "nervous"
        cat.owner = nil
      end
    end

    @cats = []
    @dogs = []
  end

  def list_pets
     "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
end
