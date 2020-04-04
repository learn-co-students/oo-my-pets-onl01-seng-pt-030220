class Owner
  # code goes here
  @@all =[]
  
  def self.all
    @@all
  end
 attr_reader :name, :species
 
 
  def initialize(name)
     @name = name
     @species = "human"
     save
  end

  def say_species
    return "I am a #{@species}."
  end

 def dogs
  Dog.all.select { |dog| dog.owner == self}
 end

 def cats
  Cat.all.select { |cat| cat.owner == self}
 end

 def save
   @@all << self
 end

 def self.count
    @@all.size
 end

 def self.reset_all
 @@all.clear
 end

 def buy_cat(name)
  Cat.new(name,self)
 end

 def buy_dog(name)
  Dog.new(name,self)
 end

 def walk_dogs
 self.dogs.each do |dog| dog.mood = "happy"
 end
 end

 def feed_cats
 self.cats.each do |cat| cat.mood = "happy"
 end
 end

 def sell_pets
  pets = self.dogs + self.cats
  pets.each do |pet| pet.mood = "nervous"
  pet.owner = nil
  end
end


 def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
 end

end