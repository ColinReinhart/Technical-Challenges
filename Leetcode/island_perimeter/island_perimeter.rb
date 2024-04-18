# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  count = 0
  grid.each_with_index do |arr, idx|
    arr.each_with_index do |n, i|
      if n == 1
        count += 4
        if idx > 1
          count -= 1
        end
        if i-1 != -1 && arr[i-1] == 1
          count -= 1
        end
        if arr[i+1] == 1
          count -= 1
        end
        if grid[idx+1] && grid[idx+1][i] == 1
          count -= 1
        end
        if idx > 0 && grid[idx - 1] == 1
          count -= 1
        end
      end
    end
  end
  count
end

p island_perimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])
p island_perimeter([[1]])
p island_perimeter([[1,0]])
