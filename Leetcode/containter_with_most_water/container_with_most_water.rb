# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  highest = 0
  height.each_with_index do |h, i|
    x = i + 1
    until x == height.length
      if [h, height[x]].min * (x - i) > highest
        highest = [h, height[x]].min * (x - i)
      end
      x += 1
    end
  end
  highest
end

p max_area([1,8,6,2,5,4,8,3,7])
p max_area([1,1])
