# @param {Integer} n
# @param {Integer[][]} rectangles
# @return {Boolean}
def check_valid_cuts(n, rectangles)
  can = -> arr do
    arr.sort! { |a, b| a[0] == b[0] ? a[1] <=> b[1] : a[0] <=> b[0] }
    .inject([0, arr[0][1]]) { |(cnt, curr), с|
      (return true if (cnt += 1) == 2) if с[0] >= curr
      [cnt, [с[1], curr].max] } and false
  end

    rectangles.each_with_object([[], []]) { |r, o|
      o[0].push([r[0], r[2]]) and o[1].push([r[1], r[3]]) }
    .yield_self{ |a1, a2| can[a1] || can[a2] }
end

p check_valid_cuts(5, [[1,0,5,2],[0,2,2,4],[3,2,5,3],[0,4,4,5]]) #true
p check_valid_cuts(4, [[0,0,1,1],[2,0,3,4],[0,2,2,3],[3,0,4,3]]) #true
p check_valid_cuts(4, [[0,2,2,4],[1,0,3,2],[2,2,3,4],[3,0,4,2],[3,2,4,4]]) #false
