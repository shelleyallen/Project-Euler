sum = 0
1.upto(1000) do |i|
  sum += i**i
end
puts sum.to_s[-10..-1]
