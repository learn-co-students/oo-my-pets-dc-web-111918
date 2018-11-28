require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = "human"
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |details|
      if details.mood == "nervous"
        details.mood = "happy"
      end
    end
  end

  def play_with_cats
    @pets[:cats].each do |details|
      if details.mood == "nervous"
        details.mood = "happy"
      end
    end
  end

  def feed_fish
    @pets[:fishes].each do |details|
      if details.mood == "nervous"
        details.mood = "happy"
      end
    end
  end

  def sell_pets
    @pets.each do |type, array|
      array.each do |id|
        id.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
   "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
