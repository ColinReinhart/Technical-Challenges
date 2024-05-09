# @param {Integer[]} happiness
# @param {Integer} k
# @return {Integer}
def maximum_happiness_sum(happiness, k)
  arr = []
  sort = happiness.sort
  k.times do
    temp = []
    arr << sort.pop
    sort.map do |n|
      if n > 0
       temp << n -= 1
      end
      sort = temp
    end
  end
  arr.sum
end


p maximum_happiness_sum([1,2,3], 2)
p maximum_happiness_sum([1,1,1,1], 2)
p maximum_happiness_sum([2,3,4,5], 1)
