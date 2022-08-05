at_exit { puts 'Success!' }

class Game
  attr_reader :max_attempts, :max_number

  def initialize(max_attempts: 3, max_number: 10)
    @max_attempts = max_attempts
    @max_number = max_number
    @try = 0
    @guess_number = rand(1..max_number)
  end


  def guessing_number
    while guessing?
      puts 'Enter the number:'
      guess = Integer(gets, exception: false)
      next unless guess.is_a?(Integer)

      break if check_guess(guess)
      @try += 1
    end
    puts 'You have lost!'
  end

  private

  def guessing?
    @try < @max_attempts
  end

  def check_guess(guess)
    exit if guess == @guess_number

    puts "Your number is too #{(guess <=> @guess_number) > 0 ? 'high' : 'low'}"
  end
end
