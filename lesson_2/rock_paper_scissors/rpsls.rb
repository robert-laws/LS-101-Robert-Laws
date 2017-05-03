# Rock, Paper, Scissors
VALID_CHOICES = %w(rock paper scissors lizard spock)
winner = ''
user_wins = 0
comp_wins = 0

def prompt(mes)
  Kernel.puts(mes.to_s)
end

def add_win(player)
  puts player
  if player == 'user'
    user_wins += 1
  elsif player == 'computer'
    comp_wins += 1
  end
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard')
end

def display_results(player, computer)
  if win?(player, computer)
    winner = 'user'
    prompt("Player Won!")
  elsif win?(computer, player)
    winner = 'computer'
    prompt("Computer Won!")
  else
    winner = 'tie'
    prompt("It's a tie")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice")
    end
  end
  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  add_win(winner)

  prompt("Current Score - User Wins: #{user_wins}; Computer Wins: #{comp_wins}")

  prompt("Do you want to play again?")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing")
