class Cat
  #attr_accessor contains dynamic variables
  attr_accessor :mood
  #attr_reader contains static variables or vars that
  # require cutom writer method
  attr_reader :name, :owner
  @@all = []

  def initialize(name, mood= "nervous")
    @name = name
    @mood = mood
    @@all << self

  end

  ##def eat_nearby_fish
    # if owner has at least 1 fish..
    # then

    # owner.fishes
  ##end
end
