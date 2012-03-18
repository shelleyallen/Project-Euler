i = 0
prev2 = 0
prev1 = 1
this = 0
this_length = this.to_s.length
while this_length < 1000
  i += 1
  this = prev1 + prev2
  this_length = this.to_s.length
  prev1 = prev2
  prev2 = this
  puts "ith #{i} this #{this} length #{this_length}"
end