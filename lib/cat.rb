  
class Cat
  attr_accessor :mood, :owner     # can change its owner, can change its mood 
  attr_reader :name         # can't change its name

  @@all = []

  def initialize(name, owner)   # instantiates with a name and owner 
    @name = name
    @mood = "nervous"       # initializes with a nervous mood ( can change its mood)
    @owner = owner    
    @@all << self
    owner.cats << self
  end

  def self.all        # this is a class method, it knows all the cats
    @@all
  end
end
