class Owner
  
  attr_accessor 
  attr_reader :species, :name
  
  
  def initialize(name)  #initializes with a name 
    @name = name        # cannot change owners name 
    @species = "human"  #initializes with species set to human
  end 
  
  
  
  
end 