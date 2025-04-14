# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
  count = 0

  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      next unless (arr[i] - arr[j]).abs <= a

      (j+1...arr.length).each do |k|
        if (arr[j] - arr[k]).abs <= b && (arr[i] - arr[k]).abs <= c
          count += 1
        end
      end
    end
  end

  count
end

p count_good_triplets([3,0,1,1,9,7], 7, 2, 3) #4
p count_good_triplets([1,1,2,2,3], 0, 0, 1) #0
