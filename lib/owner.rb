require 'pry'
class Owner
attr_accessor :name, :pets, :mood
attr_reader :species
    @@all = []

  def initialize(pets, species = "human")
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

#Start Class Methods Here
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end


##### End clas methods

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
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, arr|
      arr.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
    # binding.pry
  end

  # def set_pet_owner(pet)
  #   # change pet.owner to seelf
  #   pet.owner = self
  # end

  # def fishes
  #   Fish.all.select
  #
  #
  # end

end
