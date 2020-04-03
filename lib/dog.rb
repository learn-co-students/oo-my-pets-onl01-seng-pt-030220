class Dog

    @@all = []

    def self.all
      @@all
    end

    attr_accessor :owner, :mood
    attr_reader :name

    def initialize (name, owner)
      @name, @owner = name, owner
      @mood = "nervous"
      @@all << self
    end


end