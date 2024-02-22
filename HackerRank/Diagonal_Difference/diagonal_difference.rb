def diagonalDifference(arr)
  ltr = []
  rtl = []
  x = 0
  y = 0
  z = -1
  arr.count.times do
    ltr << arr[x][x]
    x += 1
  end
  arr.count.times do
    rtl << arr[y][z]
    y += 1
    z -= 1
  end
  wip = (ltr.sum) - (rtl.sum)
  wip.abs
end

grid_matrix = [
  [11, 2, 4],
  [4, 5, 6],
  [10, 8, -12]
]

# Call the function with the grid_matrix
result = diagonalDifference(grid_matrix)
puts result
