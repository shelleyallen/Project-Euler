digits = (1..9).to_a.map{|s| s.to_s}

i = 1
while true
  res = ""
  j = 1
  while res.length < 9
    res += (i*j).to_s
    j += 1
  end
  if res.length == 9 && res.split("").sort == digits
    puts "i #{i} j #{j-1} res #{res}"
  end


  i += 1
end