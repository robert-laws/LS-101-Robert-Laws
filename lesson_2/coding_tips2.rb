# Coding Tips - 2
# use extra lines to make code more readable

name = ''

puts 'Enter a name:'
loop do
  name = gets.chomp
  break unless name.empty?
  puts 'That is not a valid name, try again.'
end

puts "Hello, #{name}"
puts "How are you doing?"

# side effect - displays to the output
def total(n1, n2)
  puts n1 + n2
end

# side effect - mutates the passed-in array
def append(array, additional_value)
  array << additional_value
end

# no side effects
def new_total(n1, n2)
  n1 + n2
end

# don't mutate the caller during iteration
# simple iteration over array
words = %w(hal jim bob kal)
words.each { |str| puts str }

# modifing values of array, but not the array itself
new_words = %w(hal jim bob kal)
new_words.each { |str| str << "!" }
p words

# variable shadowing
# occurs when a variable in inner-scope value same as a variable in outer-scope
# example
title = "person"
["hal", "kal", "bob"].each do |title|
  puts title.to_s
end

# use underscores for unused parameters
names = ["hal", "kal", "mel"]
names.each { |_| puts "hello!" }

names.each_with_index do |_, index|
  puts "#{index + 1}. hello!"
end
