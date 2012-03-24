def rotations(number)
  r = []
  digits = number.to_s.split("").map{|i| i.to_i}
  begin
    r << digits
    digits = digits.rotate
  end while !r.include?(digits)
  r
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

def all_primes?(r)
  r.each do |rotation|
    return false unless prime?(rotation.join.to_i)
  end
  true
end

prime_rotations = []
1.upto(1000000) do |n|
  prime_rotations << n if all_primes?(rotations(n))
end

puts prime_rotations.inspect
puts prime_rotations.length