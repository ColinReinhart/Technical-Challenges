def min_operations(nums)
  operation_count = 0
  hash = Hash.new(0)
  nums.each { |n| hash[n] += 1 }
  if hash.keys.include?(1)
    return -1
  else
    hash.keys.each do |k|
      if k == 2
        operation_count += 1
      elsif k == 3
        operation_count += 1
      elsif k % 3 == 0
        operation_count += k / 3
      elsif k - 2 % 3 == 0
        operation_count += k - 2 / 3 + 1
      else k % 2 == 0
        operation_count += k / 2
      end
    end
  end
  return operation_count
end

p min_operations([2,3,3,2,2,4,2,3,4])
p min_operations([2,1,2,2,3,3])
