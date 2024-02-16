def find_least_num_of_unique_ints(arr, k)
  hash = Hash.new(0)
  arr.each { |x| hash[x] += 1 }
  h = hash.sort_by { |k,v| v }
  hsh = h.to_h
  hsh.map do |key,value|
    if k > 0
      if value - 1 == 0
        hsh.delete(key)
        k -= 1
      elsif value == k
        hsh.delete(key)
        break
      elsif value > k
        hsh[key] -= k
        break
      else value < k
        k -= value
        hsh.delete(key)
      end
    else
      break
    end
  end
  hsh.count
end

p find_least_num_of_unique_ints([5,5,4], 1)
p find_least_num_of_unique_ints([4,3,1,1,3,3,2], 3)
p find_least_num_of_unique_ints([2,1,1,3,3,3], 3)
