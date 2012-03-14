def is_prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n%i == 0
  end
  
  return true
end

max = 2000000
max = 1000
possible_primes = (2..max)
2.upto(Math.sqrt(max)) do |possible_prime|
  if is_prime?(possible_prime)
    possible_primes = possible_primes.reject{|p| (p != possible_prime) && (p%possible_prime == 0)}
  end
end
puts possible_primes.inspect
# puts possible_primes.inject(:+)
