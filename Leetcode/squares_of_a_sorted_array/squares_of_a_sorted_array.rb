# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  result = Array.new(nums.length)
  start = 0
  last = nums.length - 1
  insert_position = last

  while start <= last
    if nums[start].abs > nums[last].abs
      result[insert_position] = nums[start] ** 2
      start += 1
    else
      result[insert_position] = nums[last] ** 2
      last -= 1
    end
    insert_position -= 1
  end

  result
end

p sorted_squares([-4,-1,0,3,10]) == [0,1,9,16,100]
p sorted_squares([-7,-3,2,3,11]) == [4,9,9,49,121]
