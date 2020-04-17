class Cat
  attr_reader :name
  attr_accessor :mood, :owner
  @@cats =[]

  def initialize(name, owner, mood = "nervous")
    @name, @owner, @mood = name, owner, mood
    @@cats<< self
  end
  def self.all
    @@cats

  end
end 
