# Score

players = %w(user computer)
user_wins = 0
comp_wins = 0

def get_win(winner)
  if winner == 'user'
    user_wins += 1
  elsif winner == 'computer'
    comp_wins += 1
  end
end

loop do
  winner = players.sample

  get_win(winner)

  puts "Score - User: #{user_wins}, Computer: #{comp_wins}"
  if user_wins == 5 || comp_wins == 5
    break
  end

  puts "play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Final Score - User: #{user_wins}, Computer: #{comp_wins}"
