def divide_array(nums, k)
  return [] if nums.count%3 != 0
  output = []
  temp_arr = []
  nums.sort.map do |num|
    if temp_arr.count < 3
      temp_arr << num
    else
      if temp_arr[2] - temp_arr[0] <= k
        output << temp_arr
        temp_arr = [num]
      else
        return []
      end
    end
  end
  if temp_arr[2] - temp_arr[0] <= k
    output << temp_arr
    return output
  else
    return []
  end
end


p divide_array([1,3,4,8,7,9,3,5,1], 2)
p divide_array([1,3,3,2,7,3], 3)
