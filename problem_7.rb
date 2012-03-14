def is_prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n%i == 0
  end
  
  return true
end

count = 0
primes = []
i = 0
while count < 10001
  if is_prime?(i)
    count += 1
    puts "#{count}th prime #{i}"
  end
  i+= 1
end