class Owner
  attr_accessor
  attr_reader :name, :species
  #name was able to be changed because I had initially set it as a attr_accessor, allowing it read and written
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def name
    @name
  end

  def save
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select { |cat|cat.owner == self }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self}
  end

  def buy_cat(cat_name) #it sets the owner value of a cat instance to owner
    new_cat = Cat.all.select{|cat| cat.name == cat_name}[0]
    new_cat.owner = self
    #binding.pry
  end

  def buy_dog(dog_name)
    new_dog = Dog.all.select{|dog| dog.name == dog_name}[0]
    new_dog.owner = self
  end

end
