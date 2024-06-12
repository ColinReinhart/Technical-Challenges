# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  answer = []
  hold = []
  arr1.each { |x| arr2.include?(x) ? 0 : hold << x }

  arr2.each do |char|
    arr1.each do |c|
      if char == c
        answer << c
      end
    end
  end
  hold.sort.each { |x| answer << x }
  answer
end


p relative_sort_array([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6]) == [2,2,2,1,4,3,3,9,6,7,19]
p relative_sort_array([28,6,22,8,44,17], [22,28,8,6]) == [22,28,8,6,17,44]
p relative_sort_array([2,21,43,38,0,42,33,7,24,13,12,27,12,24,5,23,29,48,30,31], [2,42,38,0,43,21]) == [2,42,38,0,43,21,5,7,12,12,13,23,24,24,27,29,30,31,33,48]
