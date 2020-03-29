class Cat
# code goes here

@@cats = [] 

def self.all 
  @@cats 
end 

attr_accessor :mood, :owner
attr_reader :name 

def initialize(name, owner, mood = "nervous")
  @name = name 
  @owner = owner
  @mood = mood 
  @@cats << self
end 


end