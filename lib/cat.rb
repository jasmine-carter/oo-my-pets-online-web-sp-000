require 'pry'

class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    save
  end

  def owner=(owner)
    @owner = owner
  end

  def name
    @name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
