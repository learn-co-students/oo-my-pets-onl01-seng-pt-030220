class Dog
  # code goes here

  @@dogs = [] 
  def self.all 
    @@dogs 
  end 

attr_accessor :owner, :mood 
attr_reader :name 

  def initialize(name, owner, mood = "nervous")
    @name = name 
    @owner = owner 
    @mood = mood 
    @@dogs << self
  end 

end