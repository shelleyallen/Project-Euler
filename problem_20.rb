def factorial(n)
  (1..n).inject(:*)
end

digits = factorial(100).to_s.split("").map{|i| i.to_i}
puts digits.inject(:+)