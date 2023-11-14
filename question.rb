class Question
  attr_reader :question, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    if rand(2) == 0
      @question = "What does #{@num1} plus #{@num2} equal?"
      @answer = @num1 + @num2
    else
      @question = "What does #{@num1} minus #{@num2} equal?"
      @answer = @num1 - @num2
    end
  end
end