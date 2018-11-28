class Fish
  #attr_accessor is for dynamic variables
  attr_accessor :mood
  #attr_reader is for variables that wont change
  attr_reader :name

  def initialize(name, mood= "nervous")
    @name = name
    @mood = mood
  end
end
