  
class Cat
  attr_accessor :owner     # can change its owner, 
  attr_reader :name         # can't change its name

  @@all = []

  def initialize(name, owner)   # instantiates with a name and owner 
    @name = name
    @owner = owner    
    @@all << self
    owner.cats << self
  end

  def self.all        # this is a class method, it knows all the cats

end
