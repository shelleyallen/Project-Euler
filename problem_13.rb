s = File.read('problem_13.txt')
numbers = s.split("\n").map{|i| i.to_i}
puts numbers
sum = numbers.inject(:+)
puts sum.to_s[0..9]
