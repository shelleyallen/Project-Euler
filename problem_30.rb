
p = []
n = 0
2.upto(5*(9**5)) do |i|
  t = 0
  i.to_s.split("").each do |d|
    t += d.to_i ** 5
  end
  p << i if t == i
end

puts "p #{p.inspect}"
puts "sum #{p.inject{|s,i| s + i}}"
