# Score

players = %w(user computer)
uw = 0
cw = 0

def get_wins(winner)
  if winner == "user"

  elsif winner == "computer"

  end
end

loop do
  winner = players.sample

  get_wins(winner)

  puts "Score - User: #{uw}, Computer: #{cw}"
  if uw == 5 || cw == 5
    break
  end

  puts "play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Final Score - User: #{uw}, Computer: #{cw}"
