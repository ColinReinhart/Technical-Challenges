# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def shortest_subarray(nums, k)
  n = nums.length
  prefix_sum = [0]

  nums.each { |num| prefix_sum << prefix_sum.last + num }

  deque = []
  min_length = Float::INFINITY

  prefix_sum.each_with_index do |sum, i|
    while !deque.empty? && sum - prefix_sum[deque.first] >= k
      min_length = [min_length, i - deque.shift].min
    end

    while !deque.empty? && sum <= prefix_sum[deque.last]
      deque.pop
    end

    deque << i
  end

  min_length == Float::INFINITY ? -1 : min_length
end

p shortest_subarray([1], 1) #1
p shortest_subarray([1,2], 4) #-1
p shortest_subarray([2,-1,2], 3) #3
