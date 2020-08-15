class Owner
  attr_accessor :cats, :dogs
  attr_reader :species, :name

  @@all = []

  def initialize(name)   #initialize with name 
    @name = name         #cannot change owner's name  
    @species = "human"   # initializes with species set to human, can't change its species
    @@all << self
    @cats = []    # returns a collection of all the cats that belong to the owner
    @dogs = []    # returns a collection of all the dogs that belong to the owner
  end

  def self.all      # .all returns all instances of Owner that have been created
    @@all         # this is a Class method 
  end

  def self.count       # .count returns the number of owners that have been created
    self.all.length     # this is a class method 
  end

  def say_species    # can say its species
    "I am a #{self.species}."
  end
  
  def self.reset_all    # .reset_all can reset the owners that have been created
    self.delete
  end 
  


end