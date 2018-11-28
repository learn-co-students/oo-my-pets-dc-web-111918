require "pry"

class Owner
  # code goes here
  OWNERS = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    OWNERS << self
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.length
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, attributes|
      attributes.each do |attribute|
        attribute.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end


end
