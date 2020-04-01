require 'pry'
class Cat

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :owner, :mood
  attr_reader   :name
  
  def initialize(name, owner = Owner.new)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all << self
  end
end

# initialized with a name and an Owner object