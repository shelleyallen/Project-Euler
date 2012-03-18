def formula(n, a, b)
  n**2 + (a * n) + b
end

def prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n%i == 0
  end
  
  return true
end

def count_primes(a, b)
  n = 0
  while prime?(formula(n, a, b))
    n += 1
  end
  n
end

max_prime_count = 0
(-999).upto(999) do |a|
  (-999).upto(999) do |b|
    num_primes = count_primes(a, b)
    if num_primes > max_prime_count
      puts "num_primes #{num_primes} a #{a} b #{b} a*b #{a*b}"
      max_prime_count = num_primes
    end
  end
end