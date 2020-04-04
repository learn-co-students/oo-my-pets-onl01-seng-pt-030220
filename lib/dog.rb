class Dog
  attr_accessor :owner, :mood
  attr_reader :name
   
	 @@all = []
  @@pets = {:pets => [], :dogs => []}
  
  
  def initialize(name, owner)
      @name = name  #can have a name
      @mood = "nervous" 
      @owner = owner
      save
    end 
    
    def save
  @@all << self
end

  
    def self.all
    @@all
  end
  
  def self.count
    @@all.length 
  end 
  
  
end