# numbers = [2, 5, 7, 9, 23, 63, 82, 13, 6, 17, 4]
#
# def get_evens(arr)
#   counter = 0
#   result = []
#   arr.each do |n|
#     if counter.even?
#       result.push(n)
#     end
#     counter += 1
#   end
#   result
# end
#
# puts get_evens(numbers)

def valid_number?(num)
  num.to_i.to_s == num
end

p valid_number?("hello")
p valid_number?(4)
p valid_number?(0)
p valid_number?('0')
p valid_number?(10)