def fact(n)
  1.upto(n).inject{|s,i| s * i}
end

def choose(n, k)
  fact(n)/(fact(k) * fact(n-k)).to_f
end

def number_of_routes_for_square(n)
  num_squares = (n*2)-1
  num_each_direction = n
  
  choose(num_squares, num_each_direction) * 2
end

puts "2*2 #{number_of_routes_for_square(2)}"
puts "3*3 #{number_of_routes_for_square(3)}"
puts "20*20 #{number_of_routes_for_square(20)}"