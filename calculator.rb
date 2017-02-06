# Simple Calculator Command Line App
Kernel.puts("Please enter two numbers...")
Kernel.puts("First Number:")
n1 = Kernel.gets().chomp()
Kernel.puts("Second Number:")
n2 = Kernel.gets().chomp()
Kernel.puts("Would you like to add, subtract, multiply, or divide?")
operation = Kernel.gets().chomp()

result = if(operation == "add")
  n1.to_f + n2.to_f
elsif(operation == "subtract")
  n1.to_f - n2.to_f
elsif(operation == "multiply")
  n1.to_f * n2.to_f
elsif(operation == "divide")
  n1.to_f / n2.to_f
else
  "You choose a different operation"
end
Kernel.puts(result)
