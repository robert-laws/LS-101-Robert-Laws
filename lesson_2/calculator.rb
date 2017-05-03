require 'pry'

# Simple Calculator Command Line App

def prompt(text)
  Kernel.puts("=> #{text}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
    when '2'
      'Adding'
    when '1'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
    else
      'not 1, 2, 3, or 4'
  end
end

prompt("Welcome to the calculator app. Enter your name:")
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure you use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}")

loop do
  n1 = 0
  prompt("Please enter two numbers...")
  loop do
    prompt("First Number:")
    n1 = Kernel.gets().chomp()

    if valid_number?(n1)
      break
    else
      Kernel.puts("Not a valid number")
    end
  end

  n2 = 0
  loop do
    prompt("Second Number:")
    n2 = Kernel.gets().chomp()

    if valid_number?(n2)
      break
    else
      Kernel.puts("Not a valid number")
    end
  end

  operator_prompt = <<-MSG
    Would you like to
    1) add
    2) subtract
    3) multiply
    4) divide
    the numbers #{n1} and #{n2}?"
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Choose a number between 1 - 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
             when '1'
               n1.to_i + n2.to_i
             when '2'
               n1.to_i - n2.to_i
             when '3'
               n1.to_i * n2.to_i
             when '4'
               n1.to_f / n2.to_f
           end
  Kernel.puts("The result is #{result}")

  prompt("Do you want to perform another calculation? (type Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")

end

prompt("Thanks for using the calculator")
