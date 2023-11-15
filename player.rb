class Player

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  attr_accessor :name, :lives, :score

end