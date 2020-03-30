class Dog

  attr_accessor :owner, :mood

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner =owner
    @mood = mood
    @@all << self
  end

  def name
    @name
  end


end
