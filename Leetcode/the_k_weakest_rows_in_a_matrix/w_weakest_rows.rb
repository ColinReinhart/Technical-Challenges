# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  answer = []
  hash = {}
  mat.map.with_index { |arr, i| hash[i] = arr.sum }
  array = hash.sort_by { |key, value| value }
  array[0...k].each do |x|
    answer << x[0]
  end
  answer
end

p k_weakest_rows([[1,0,0,0],
 [1,1,1,1],
 [1,0,0,0],
 [1,0,0,0]], 2)
 p k_weakest_rows([[1,1,0,0,0],
 [1,1,1,1,0],
 [1,0,0,0,0],
 [1,1,0,0,0],
 [1,1,1,1,1]], 3)
