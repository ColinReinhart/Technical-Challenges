# @param {Integer[]} digits
# @return {Integer[]}
def find_even_numbers(digits)
  even = []
  wip = digits.permutation(3).to_a.map { |arr| arr.join.to_i }

  wip.each do |num|
    even << num if num.to_s.length == 3 && num.even?
  end

  even.uniq.sort
end

# p find_even_numbers([2,1,3,0]) == [102,120,130,132,210,230,302,310,312,320]
p find_even_numbers([2,2,8,8,2]) == [222,228,282,288,822,828,882]
# p find_even_numbers([3,7,5]) == []
