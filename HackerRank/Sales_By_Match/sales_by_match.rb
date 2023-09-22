def sockMerchant(n, ar)
  hash = Hash.new(0)
  pair_count = 0
  ar.map { |x| hash[x] += 1 }
  hash.each do |x|
    pair_count += x[1]/2
  end
  pair_count
end

p sockMerchant(7, [1,2,1,2,1,3,2])
