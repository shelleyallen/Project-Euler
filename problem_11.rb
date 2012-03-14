require 'matrix'

def max_product(n)
  max_prod_l_to_r = 0
  n.each do |row|
    0.upto(row.length-4) do |c|
      prod_elements = row[c..c+3].inject(:*)
      max_prod_l_to_r = prod_elements if prod_elements > max_prod_l_to_r
    end
  end
  max_prod_l_to_r
end

def max_product_diag(n)
  max_prod_diag = 0
  1.upto(20-4) do |r|
    1.upto(20-4) do |c|
      prod_diag = n[r][c] * n[r+1][c+1] * n[r+2][c+2] * n[r+3][c+3]
      max_prod_diag = prod_diag if prod_diag > max_prod_diag
    end
  end
  max_prod_diag
end

s = File.read("problem_11.txt")
n = s.split("\n").map{|l| l.split(" ").map{|e| e.to_i}}
n_t = Matrix[*n].transpose.to_a
n_r = n.map{|r| r.reverse}

puts "max row prod #{max_product(n)}"
puts "max col prod #{max_product(n_t)}"

puts "max prod diag #{max_product_diag(n)}"
puts "max prod diag other #{max_product_diag(n_r)}"