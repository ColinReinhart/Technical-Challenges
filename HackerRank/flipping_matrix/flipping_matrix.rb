def flippingMatrix(matrix)
  n = matrix.length
  max_sum = 0


  (0...n/2).each do |i|
    (0...n/2).each do |j|

      max_corner = [
        matrix[i][j],
        matrix[i][n - 1 - j],
        matrix[n - 1 - i][j],
        matrix[n - 1 - i][n - 1 - j]
      ].max


      max_sum += max_corner
    end
  end

  max_sum
end

p flippingMatrix([[112, 42, 83, 119],[56, 125, 56, 49], [15, 78, 101, 43], [62, 98, 114, 108]])
