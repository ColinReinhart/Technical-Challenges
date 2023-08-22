nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]

def find_matches(array_1, array_2, array_3)
  arrays = array_1 + array_2 + array_3
  wip = {}
  solution = []
  arrays.map do |num|
    if wip[num] == nil
      wip[num] = 1
    else
      wip[num] += 1
    end
  end
  wip.each do |k, v|
    if v > 2
      solution << k
    end
  end
  return solution
end

p find_matches(nums_1, nums_2, nums_3)
