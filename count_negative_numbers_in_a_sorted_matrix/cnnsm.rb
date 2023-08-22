# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
    count = 0
    grid.flatten.each do |num|
        if num < 0
            count += 1
        end
    end
    return count
end

p count_negatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])
p count_negatives([[3,2],[1,0]])