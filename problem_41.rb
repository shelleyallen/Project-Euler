def is_prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n%i == 0
  end
  
  return true
end

possible_primes = []
(2..9).each do |i|
  (1..i).to_a.permutation(i).each do |l| 
    n = l.join.to_i
    possible_primes << n if is_prime?(n)
  end
end
reversed_primes = possible_primes.sort.reverse
puts reversed_primes.inspect
puts reversed_primes.length
