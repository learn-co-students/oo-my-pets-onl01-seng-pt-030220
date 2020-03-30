class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def initialize(name, owner)
    @name = name 
    @mood = 'nervous'
    @owner = owner 
    save
  end 
  
  def save 
    @@all << self 
  end
end