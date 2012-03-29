def has_property?(digits)
  primes = [1,2,3,5,7,11,13,17]
  idx = 0
  digits.each_cons(3).each do |c|
    return false unless c.join.to_i%primes[idx] == 0
    idx += 1
  end
  return true
end

with_property = []
(0..9).to_a.permutation(10).each do |l|
  # puts l.inspect
  with_property << l.join.to_i if has_property?(l)
end

puts with_property.inspect
puts with_property.length
puts with_property.inject{|s, i| s + i}