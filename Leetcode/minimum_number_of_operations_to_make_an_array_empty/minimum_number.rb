def min_operations(nums)
  operation_count = 0
  hash = Hash.new(0)
  nums.each { |n| hash[n] += 1 }
  if hash.values.include?(1)
    return -1
  else
    hash.values.each do |v|
      until  v <= 4
        v = v - 3
        operation_count += 1
      end
      if v == 4
        operation_count += 2
      elsif v == 3
        operation_count += 1
      elsif v == 2
        operation_count += 1
      end
    end
  end
  return operation_count
end

# p min_operations([2,3,3,2,2,4,2,3,4])
# p min_operations([2,1,2,2,3,3])
p min_operations([14,12,14,14,12,14,14,12,12,12,12,14,14,12,14,14,14,12,12])
