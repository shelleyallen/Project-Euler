require 'narray'

def sum_of_factors(n)
  f = [1]
  2.upto(Math.sqrt(n)) do |i|
    if n%i == 0
      r = n/i
      f += [i,r]
    end
  end
  f.uniq.inject{|s,i| s+i}
end

def abundant_numbers
  a = []
  1.upto(28123) do |i|
    a << i if sum_of_factors(i) > i
  end
  a
end

a_n = abundant_numbers

sums = []
a_n.each do |i|
  a_n.each do |j|
    sums << (i + j)
  end
end


puts ((1..28123).to_a - sums.uniq).inject(0){|s, i| s + i}

