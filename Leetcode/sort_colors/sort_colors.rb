# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  array = []
  nums.each_with_index do |x,idx|
    if array == []
      array << x
    else
      array.each_with_index do |y,i|
        if y >= x
          array.insert(i,x)
          break
        end
      end
    end
  end
  array
end

p sort_colors([2,0,2,1,1,0])
p sort_colors([2,0,1])
