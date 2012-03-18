max = 100

seq = []
2.upto(max) do |a|
  2.upto(max) do |b|
    seq << a**b
  end
end
puts seq.uniq.length