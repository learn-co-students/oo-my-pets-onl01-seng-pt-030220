require "pry"
class Owner
  # code goes here

@@all = [] 

def self.all 
  @@all 
end 

def self.count 
  @@all.count 
end

def self.reset_all 
  @@all.clear 
end

attr_reader :species, :name 

def initialize(name)
    @name = name 
    @species = species
    @@all << self
  end

  def species 
    @species = "human"
  end

  def name 
  @name 
end

def say_species
  "I am a human."
end

def cats 
array = [] 
Cat.all.each do |a| 
if a.owner == self 
  array << a 
end
end 
array
end 

def dogs
  array = [] 
  Dog.all.each do |a|
    if a.owner == self 
      array << a 
    end
  end
  array 
end 

def buy_cat(cat_name)
cat_name = Cat.new(cat_name, self)
end 

def buy_dog(dog_name)
dog_name = Dog.new(dog_name, self) 
end

def walk_dogs 
Dog.all.map do |a| 
  a.mood = "happy"
end 
end 

def feed_cats 
Cat.all.map do |a|
  a.mood = "happy"
end 
end 

def sell_pets 
all_pets = [] 
Cat.all.map do |a|
  a.mood = "nervous"
  a.owner = nil 
end 
all_pets << Cat.all 

Dog.all.map do |a|
  a.mood = "nervous"
  a.owner = nil
end
all_pets << Dog.all

end 

def list_pets 
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end 

end
#class end - dont touch