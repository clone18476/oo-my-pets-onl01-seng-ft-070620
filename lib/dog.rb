  
class Dog
  attr_accessor :mood, :owner   # can change owner, can change mood
  attr_reader :name    # cannot change name 

  @@all = []

  def initialize(name, owner)    # instantiates with a name and owner
    @name = name
    @mood = "nervous"         #  initializes with a nervous mood ( can change its mood)
    @owner = owner
    @@all << self
    owner.dogs << self
  end

  def self.all     # this is a class method, it knows all the dogs 
    @@all
  end
end