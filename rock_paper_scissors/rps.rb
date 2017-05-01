# Rock, Paper, Scissors

VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(mes)
  Kernel.puts("#{mes}")
end

choice = ""

loop do
  prompt("Choose one: #{VALID_CHOICES.join(", ")}")
  choice = Kernel.gets.chomp

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("Not a valid choice")
  end
end



computer_choice = VALID_CHOICES.sample
