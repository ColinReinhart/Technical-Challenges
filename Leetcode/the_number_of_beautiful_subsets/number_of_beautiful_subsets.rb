# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def beautiful_subsets(nums, k)
  output = []
  arr = []
  (0..nums.length - 1).each do |start_point|
    (start_point..nums.length - 1).each do |end_point|
      arr << nums[start_point..end_point]
    end
  end

  arr.map do |a|
    if a.length == 1
      output << a
    else
      a.combination(2) do |x, y|
        if y-x != k
          output << [x, y]
        end
      end
    end
  end

  return output.length
end

p beautiful_subsets([2,4,6], 2)
p beautiful_subsets([1], 1)
