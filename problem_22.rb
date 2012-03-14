s = File.read("names.txt")
names = s.gsub('"', "").split(",").sort

sum = 0
names.each_with_index do |name, idx|
  name_total = name.split("").inject(0){|s, i| s + i.ord - 64}
  sum += (name_total * (idx + 1))
  puts "name #{name} name_total #{name_total} idx + 1 #{idx + 1} sum #{sum}"
end
