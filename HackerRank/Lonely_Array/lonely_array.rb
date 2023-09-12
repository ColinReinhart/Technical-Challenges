def lonelyinteger(a)
  hash = {}
  a.map do |i|
    if hash.include?(i) == false
      hash[i] = 1
    else
      hash[i] += 1
    end
  end
  hash.find do |k, v|
    if v == 1
      return k
    end
  end
end

p lonelyinteger([1, 2, 3, 4, 3, 2, 1])
