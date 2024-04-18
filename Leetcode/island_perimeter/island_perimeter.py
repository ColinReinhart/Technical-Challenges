import pdb

class Solution(object):
    def islandPerimeter(self, grid):
        count = 0
        
        for index, arr in enumerate(grid):
            for indx, num in enumerate(arr):
                if num == 1:
                    count += 4
                    if indx + 1 < len(arr) and arr[indx + 1] == 1:
                        count -= 1
                    if indx - 1 > -1 and arr[indx - 1] == 1:
                        count -= 1
                    if index > 0 and grid[index - 1][indx] == 1:
                        count -= 1
                    if index + 1 < len(grid) and grid[index + 1][indx] == 1:
                        count -= 1
                
        return count
        

solution = Solution()
print(solution.islandPerimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]))
print(solution.islandPerimeter([[1]]))
print(solution.islandPerimeter([[1,0]]))
print(solution.islandPerimeter([[1],[1]]))