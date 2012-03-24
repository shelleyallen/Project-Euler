def triangle(n)
  0.5*n*(n+1)
end

triangles = (1..100).collect{|n| triangle(n)}

matches = []
f = File.read("words.txt")
f.split(",").each do |w|
  s = 0
  w[1..-2].each_byte{|b| s += (b - 64)}
  matches << [w[1..-2], s] if triangles.include?(s)
end

puts matches.inspect
puts matches.length