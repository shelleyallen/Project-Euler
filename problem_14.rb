def next_in_seq(n)
  if n%2 == 0
    n/2
  else
    (3*n) + 1
  end
end

max_chain_length = 0
max_starting_number = 0
1.upto(1000000) do |starting_number|
  n = starting_number
  chain = []
  while chain.last != 1
    n = next_in_seq(n)
    chain << n
  end
  if chain.length > max_chain_length
    max_chain_length = chain.length
    max_starting_number = starting_number
    puts "max_chain_length #{max_chain_length}"
    puts "max_starting_number #{max_starting_number}"
  end
end

