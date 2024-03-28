# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_subarray_length(nums, k)
  subarray = []
  hash = Hash.new(0)
  nums.each { |num| hash[num] += 1 }
  k.times do
    hash.each do |key, value|
      if value > 0
        subarray << key
        hash[key] -= 1
      end
    end
  end
  subarray.count
end

puts max_subarray_length([1,2,3,1,2,3,1,2], 2)
puts max_subarray_length([1,2,1,2,1,2,1,2], 1)
puts max_subarray_length([5,5,5,5,5,5,5], 4)
