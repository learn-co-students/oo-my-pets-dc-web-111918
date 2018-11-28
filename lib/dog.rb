class Dog
  #for dynamic variables
  attr_accessor :mood
  #for static variables or vars that require cutsom writer method
  attr_reader :name

  def initialize(name, mood= "nervous")
    @name = name
    @mood = mood
  end
end
