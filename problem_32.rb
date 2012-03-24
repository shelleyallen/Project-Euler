digits = (1..9).to_a.map{|s| s.to_s}

products = []
1.upto(2000) do |a|
  1.upto(500) do |b|
    product = a * b
    
    a_d = a.to_s.split("")
    b_d = b.to_s.split("")
    product_d = product.to_s.split("")
    res = a_d + b_d + product_d
    if res.length == 9 && res.sort == digits
      products << product
    end
  end
end

puts products.uniq.inject{|s, i| s + i}