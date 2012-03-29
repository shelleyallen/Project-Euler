def hexagonal(n)
  n*(2*n-1).to_f
end

def triagonal?(x)
  n = (Math.sqrt(1 + 8*x) - 1)/2
  n%1 == 0
end

def pentagonal?(x)
  n = (Math.sqrt(1 + 24*x) + 1)/6
  n%1 == 0
end

h = 144
while true
  n = hexagonal(h)
  if pentagonal?(n) && triagonal?(n)
    puts "A winner #{n}"
    break
  end
  h += 1
  puts "Upto #{n}" if n%10000 == 0
end