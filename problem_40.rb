large_str = (1..1000000).collect{|i| i}.join

elements = 1
[1, 10, 100, 1000, 10000, 100000, 1000000].each do |i|
  elements *= large_str[i-1].to_i
end
puts elements