def palindrome?(n)
  n.to_s == n.to_s.reverse
end

palindromes = []
999.downto(100) do |i|
  999.downto(100) do |j|
    palindromes << i*j if palindrome?(i*j)
  end
end

palindromes.max