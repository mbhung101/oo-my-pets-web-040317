

class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize (name)
    @name = name
    self.mood = "nervous"
  end

  def mood=(n)
    @mood = n
  end
end
