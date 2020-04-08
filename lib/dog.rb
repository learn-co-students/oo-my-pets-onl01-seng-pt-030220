class Dog

@@all = []

attr_accessor :owner, :mood
attr_reader :name

def self.all
  @@all
end



def initialize(name, owner)
  @name = name 
  @owner = owner
  @mood = "nervous"
  @@all << self
end










end