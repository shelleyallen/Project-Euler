palindromic = []
1.upto(999999) do |decimal|
  binary = decimal.to_s(2)
  if (binary == binary.reverse) && (decimal.to_s == decimal.to_s.reverse)
    palindromic << decimal
  end
end
puts palindromic.inspect
puts palindromic.inject{|s, i| s + i}