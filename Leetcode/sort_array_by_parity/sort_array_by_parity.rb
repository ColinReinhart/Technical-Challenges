def sort_array_by_parity(nums)
  evens = []
  odds = []
  answer = []
  nums.each do |num|
    if num.odd?
      odds << num
    else
      evens << num
    end
  end
  answer << evens
  answer << odds
  answer.flatten
end

p sort_array_by_parity([3,1,2,4])
