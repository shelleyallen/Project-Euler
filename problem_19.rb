require 'date'

date = Date.new(1901, 1, 1)
counter = 0
while date <= Date.new(2000, 12, 31)
  counter += 1 if date.wday == 0 && date.mday == 1
    
  date = date.next
end

puts counter