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

h = {}
1.upto(10000) do |a|
  h[a] = sum_of_factors(a)
end
# puts "h #{h.inspect}"

amicable = []
h.each do |k, v|
  r = h.reject{|ki, vi| ki == k}
  amicable << k if r[v] == k
end
puts "amicable #{amicable.sort.inspect}"
puts amicable.inject(0){|s, a| s + a}