class Owner
  
  attr_accessor 
  attr_reader :species, :name     # cannot change name or species
  
  @@all = []
  
  
  def initialize(name)  #initializes with a name 
    @name = name        # cannot change owners name 
    @species = "human"  #initializes with species set to human
    @@all << self     # .all returns all instances of Owner that have been created 
  end 
  
  def say_species   #can say it's species 
    "I am a human."
  end 
  
  def self.all   #.all returns all instances of Owner that have been created
    @@all
  end 


  def self.count      # .count returns the number of owners that have been created
    self.all.length   # hits self, then all arrays within self, then the length (number) of items in the arrays
  end  
  
end 