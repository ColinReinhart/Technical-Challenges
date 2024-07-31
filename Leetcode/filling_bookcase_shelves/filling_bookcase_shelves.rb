# @param {Integer[][]} books
# @param {Integer} shelf_width
# @return {Integer}
def min_height_shelves(books, shelf_width)
  n = books.length
  dp = Array.new(n + 1, Float::INFINITY)
  dp[0] = 0

  for i in 1..n do
    total_thickness = 0
    max_height = 0
    j = i
    while j > 0 do
      total_thickness += books[j - 1][0]
      break if total_thickness > shelf_width
      max_height = [max_height, books[j - 1][1]].max
      dp[i] = [dp[i], dp[j - 1] + max_height].min
      j -= 1
    end
  end

  dp[n]
end

p min_height_shelves([[1,1],[2,3],[2,3],[1,1],[1,1],[1,1],[1,2]], 4) #6
p min_height_shelves([[1,3],[2,4],[3,2]], 6) #4
