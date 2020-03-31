class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name
  @@cats = []
  
  def initialize(name, owner, mood = "nervous")
    @name, @owner, @mood = name, owner, mood
    @@cats << self
  end
  def self.all
    @@cats
  end
end