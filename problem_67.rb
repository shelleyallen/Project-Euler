triangle_nums = []
File.readlines("triangle.txt").each do |line|
  triangle_nums << line.split(" ").collect{|i| i.to_i}
end

triangle_nums = triangle_nums.reverse

0.upto(triangle_nums.length-2) do |idx|
  this_row = triangle_nums[idx]

  high_nums = (0..this_row.length-2).inject([]){|s, i| s << [this_row[i], this_row[i+1]].max}
  
  triangle_nums[idx+1] = high_nums.zip(triangle_nums[idx+1]).collect{|h| h.first + h.last}
end
puts triangle_nums[-1]