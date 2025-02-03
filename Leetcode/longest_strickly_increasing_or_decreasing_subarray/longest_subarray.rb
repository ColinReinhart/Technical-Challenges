# @param {Integer[]} nums
# @return {Integer}
def longest_monotonic_subarray(nums)
  arrays = []
  array = []
  nums.each do |num|
      if array == []
        array << num
      elsif num > array[-1]
        array << num
      else
        arrays << array
        array = [num]
      end
    end
    arrays << array

    array = []

    nums.each do |num|
      if array == []
        array << num
      elsif num < array[-1]
        array << num
      else
        arrays << array
        array = [num]
      end
    end
    arrays << array

    arrays.map(&:length).max || 0
end

p longest_monotonic_subarray([1,4,3,3,2]) #2
p longest_monotonic_subarray([3,3,3,3]) #1
p longest_monotonic_subarray([3,2,1]) #3
