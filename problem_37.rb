def prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n%i == 0
  end
  
  return true
end

def truncatable_prime?(num)
  digits = num.to_s.split("")
  0.upto(digits.length-1) do |n| 
    return false if !prime?(digits[0..n].join.to_i) || !prime?(digits[(-1-n)..-1].join.to_i)
  end
  true
end

truncatable_primes = []
num = 11
while truncatable_primes.length < 11
  if truncatable_prime?(num)
    truncatable_primes << num
  end
  num += 2
end

puts truncatable_primes.inspect
puts truncatable_primes.inject{|s, i| s + i}