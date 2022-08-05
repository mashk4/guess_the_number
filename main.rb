require_relative 'lib/game'

game = Game.new(max_attempts: 5, max_number: 10)

puts "Welcome to the game 'Guess the number'! The number is between 1 and #{game.max_number}. You have only #{game.max_attempts} attempts to guess the number. Good luck!"

game.guessing_number