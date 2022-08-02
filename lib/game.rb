class Game
  attr_reader :max_attempts, :max_number

  def initialize(max_attempts:, max_number:)
    @max_attempts = max_attempts
    @max_number = max_number
    @try = 0
    @guess_number = rand(1..@max_number)
  end

  def guessing?
    @try < @max_attempts
  end

  def guessing_number
    while guessing?
      puts 'Enter the number:'
      guess = gets.chomp.to_i
      if guess > @guess_number
        puts 'Your number is too high'
      elsif guess < @guess_number
        puts 'Your number is too low'
      else
        puts 'Success!'
        exit
      end
    @try += 1
    end
    puts 'You have lost!'
  end
end
