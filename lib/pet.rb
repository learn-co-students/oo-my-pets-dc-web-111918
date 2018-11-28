class Pet

  attr_reader :name, :owner
  attr_accessor :mood

  @@all = []

  def initialize(name, owner = nil)
    @name = name
    @owner = Owner
    @mood = "nervous"
    @@all << self
  end
end
