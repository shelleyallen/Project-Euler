# Must be multiple of 20

def multiple?(num)
  3.upto(19) do |m|
    return false unless num%m == 0
  end
  true
end

num = 2520
while true
  if multiple?(num)
    puts "woooo #{num}"
    break
  end
  num += 20
end