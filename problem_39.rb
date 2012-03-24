
p = 1000
h = Hash.new(0)
  
1.upto(p) do |a|
  1.upto(p-a) do |b|
    1.upto(p-a-b) do |c|
      if (a**2 + b**2 == c**2)
        h[a + b + c] += 1
        puts "p #{a + b + c} a #{a} b #{b} c #{c}"
      end
    end
  end
end
puts h.inspect