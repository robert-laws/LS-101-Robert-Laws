# Simple Calculator Command Line App
Kernel.puts("Please enter two numbers...")
Kernel.puts("First Number:")
n1 = Kernel.gets().chomp()
Kernel.puts("Second Number:")
n2 = Kernel.gets().chomp()
Kernel.puts("Would you like to add, subtract, multiply, or divide the numbers #{n1} and #{n2}?")
operation = Kernel.gets().chomp()

result = if(operation == "add")
  n1.to_i + n2.to_i
elsif(operation == "subtract")
  n1.to_i - n2.to_i
elsif(operation == "multiply")
  n1.to_i * n2.to_i
elsif(operation == "divide")
  n1.to_f / n2.to_f
else
  "You choose a different operation"
end
Kernel.puts(result)
