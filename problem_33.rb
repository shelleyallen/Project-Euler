def gcd(a, b)
  [a,b].max.downto(1) do |i|
    return i if a%i == 0 && b%i == 0
  end
  return false
end

matches = []
10.upto(99) do |numerator|
  10.upto(99) do |denominator|
    result = numerator/denominator.to_f
    if numerator != denominator && !(numerator%10 == 0 && numerator%10 == 0) && result < 1
    
      numerator.to_s.each_char do |char|
        if denominator.to_s.include?(char)
          n = numerator.to_s.sub(char, "").to_i
          d = denominator.to_s.sub(char, "").to_i
        
          if n/d.to_f == result
            matches << [n, d]
          end
        end
      end
    end
  end
end

puts matches.uniq.inspect

num = 1
den = 1
matches.uniq.each do |pair|
  num *= pair.first
  den *= pair.last
end
gcf = gcd(num, den)
lowest_numerator = num/gcf
lowest_denominator = den/gcf
puts lowest_denominator