def factorial(n)
  return 1 if n == 0
  (1..n).inject(:*)
end

factorions = []
3.upto(2540160) do |i|
  digits = i.to_s.split("")
  if digits.inject(0){|s, l| s + factorial(l.to_i)} == i
    factorions << i
  end
end

puts "factorions #{factorions.inspect}"
puts "sum #{factorions.inject{|s, i| s + i}}"