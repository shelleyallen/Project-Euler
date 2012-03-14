# prev2 = 0
# prev1 = 1
# this = 0
# s = 0
# while this < 4000000
#   this = prev2 + prev1
#   if this%2 == 0
#     s += this
#   end
#   prev2 = prev1
#   prev1 = this
# end
# 
# puts s



prev2 = 0
prev1 = 1
total = 0
while prev1 < 4000000
  prev1 += prev2
  if prev1%2 == 0
    total += prev1
  end
  prev2 = prev1 - prev2
end

puts total