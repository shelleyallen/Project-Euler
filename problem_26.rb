def mult_order(n)
  1.upto(1000) do |i|
    return i if (10**i - 1)%n == 0
  end
  return 0
end

max_length = 0
max_d = 0
1.upto(1000) do |j|
  len = mult_order(j)
  if len > max_length
    max_length = len
    max_d = j
  end
end

puts "max #{max_d} len #{max_length}"