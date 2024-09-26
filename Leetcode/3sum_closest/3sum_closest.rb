# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  arr = []
  sum = 0

  nums.each { |num| arr <<  [(num - target).abs, num] }

  arr.sort!

  3.times do
    sum += arr.shift[1]
  end

  sum
end

p three_sum_closest([-1,2,1,-4], 1) #2
p three_sum_closest([0,0,0], 1) #0
