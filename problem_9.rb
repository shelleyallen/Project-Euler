def triple?(a,b,c)
  a**2 + b**2 == c**2
end

1.upto(500) do |a|
  2.upto(500) do |b|
    3.upto(500) do |c|
      if (a + b + c == 1000) && triple?(a,b,c)
        puts "a #{a} b #{b} c #{c} a*b*c #{a*b*c}"
      end
    end
  end
end