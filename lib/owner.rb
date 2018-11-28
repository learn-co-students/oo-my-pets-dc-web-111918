require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species



  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes] << fish
    # pets.each do |type,pet|
    #   if type == :fishes
    #     pet << fish
    #   end
    # end
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
    # pets.each do |type,pet|
    #   if type == :cats
    #     pet << cat
    #   end
    # end
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog
    # pets.each do |type,pet|
    #   if type == :dogs
    #     pet << dog
    #   end
    # end
  end

  def walk_dogs
    pets[:dogs].collect do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    pets[:cats].collect do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    pets[:fishes].collect do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    pets.each do |type, array|
      array.collect do |pet|
        pet.mood = 'nervous'
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
