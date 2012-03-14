def is_prime?(n)
  return false if n < 2
  
  return false if n%2 == 0
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n%i == 0
  end
  
  return true
end

large_number = 600851475143
num = large_number
largest_prime = nil
(1).upto(large_number) do |l|
  if (num%l == 0) && is_prime?(l)
    puts "l #{l}"
    largest_prime = l
    num /= l
    puts "num #{num}"
  end
end

largest_prime