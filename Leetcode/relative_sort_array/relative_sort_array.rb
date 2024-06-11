# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  answer = []
  hold = []
  arr2.each do |char|
    arr1.each do |c|
      # require 'pry'; binding.pry
      if char == c
        answer << c
      elsif arr2.include?(c)
        0
      else
        hold << c
      end
    end
  end
  hold.uniq.sort.each { |x| answer << x }
  answer
end


p relative_sort_array([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6]) == [2,2,2,1,4,3,3,9,6,7,19]
p relative_sort_array([28,6,22,8,44,17], [22,28,8,6]) == [22,28,8,6,17,44]
