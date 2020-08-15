class Owner
  
  attr_accessor 
  attr_reader :species, :name     # cannot change name or species
  
  
  def initialize(name)  #initializes with a name 
    @name = name        # cannot change owners name 
    @species = "human"  #initializes with species set to human
  end 
  
  def say_species
    
  end 
  
  
  
  
end 