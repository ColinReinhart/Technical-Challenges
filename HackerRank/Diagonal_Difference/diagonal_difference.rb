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
  (ltr.sum) - (rtl.sum)
end

grid_matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# Call the function with the grid_matrix
result = diagonalDifference(grid_matrix)
puts result
