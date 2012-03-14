def is_prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n%i == 0
  end
  
  return true
end


def prime_factor_between(max)
  2.upto(max) do |possible_prime|
    return possible_prime if (max%possible_prime == 0) && is_prime?(possible_prime)
  end
  false
end

def number_of_divisors(num)
  prime_factors = Hash.new(1)
  max = num
  begin
    prime = prime_factor_between(max)
    if prime && prime != num
      prime_factors[prime] += 1
      max /= prime
    end
  end while prime && prime != num
  prime_factors.values.inject{|s,i| s*i} || 0
end

triangle_total = 1
count = 1
begin
  count += 1
  triangle_total += count
  n = number_of_divisors(triangle_total)
  puts "triangle_total #{triangle_total} n #{n}"
end while n < 500
