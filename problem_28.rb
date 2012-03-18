def sum_of_spiral_diag(size)
  diags = [1]
  dim = 1
  while dim < size
    last_diag = diags.last
    4.times do
      last_diag += dim + 1
      diags << last_diag
    end
    dim += 2
  end
  diags.inject(0){|s, i| s + i}
end

puts sum_of_spiral_diag(1001)