require 'pry'

@@all = []

def self.all
  @@all
end

class Owner
  attr_reader :name
  # attr_accessor :species

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def species
 @name = "human"
  end

  def say_species
   @name = "I am a human."
  end

 


end