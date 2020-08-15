
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

  def buy_cat(name)     # can buy a cat that is an instance of the Cat class
    Cat.new(name, self)    # knows about its cats
  end

  def buy_dog(name)     # can buy a dog that is an instance of the Dog class
    Dog.new(name, self)   # knows about its dogs 
  end

  def walk_dogs    # walks the dogs which makes the dogs' moods happy
   self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats   # feeds the cats which makes the cats' moods happy
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets    # can sell all its pets, which makes them nervous
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil
      dog.mood = "nervous"
    end
  end

  def list_pets    # can list off its pets 
    number_of_dogs = self.dogs.count
    number_of_cats = self.cats.count

    "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end

  def self.reset_all       # .reset_all can reset the owners that have been created
    self.all.clear
  end
end
