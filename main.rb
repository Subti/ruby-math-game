require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def play
    while @player1.lives > 0 && @player2.lives > 0
      question = Question.new
      puts "#{@current_player.name}, please answer the following: #{question.question}"
      answer = gets.chomp.to_i
      if answer == question.answer
        puts 'Correct!'
        @current_player.score += 1
      else
        puts 'Seriously? No! Seriously??... No.'
        @current_player.lives -= 1
      end
      puts "#{@player1.name}: Score = #{@player1.score} || Lives = #{@player1.lives}"
      puts "#{@player2.name}: Score = #{@player2.score} || Lives = #{@player2.lives}"
      puts '----- NEW TURN -----'
      @current_player = @current_player == @player1 ? @player2 : @player1
    end
    puts "#{winner.name} wins with a score of #{winner.score} and #{winner.lives} lives left!"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end

  private

  def winner
    @player1.lives > 0 ? @player1 : @player2
  end
end

game = Game.new
game.play