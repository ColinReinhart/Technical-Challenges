# @param {Integer[]} digits
# @return {Integer[]}
def find_even_numbers(digits)
  freq = Array.new(10, 0)
  digits.each { |d| freq[d] += 1 }

  result = []

  (100..998).step(2) do |num|
    a, b, c = num / 100, (num / 10) % 10, num % 10
    used = Array.new(10, 0)
    used[a] += 1
    used[b] += 1
    used[c] += 1

    valid = true
    (0..9).each do |d|
      if used[d] > freq[d]
        valid = false
        break
      end
    end

    result << num if valid
  end

  result
end

p find_even_numbers([2,1,3,0]) == [102,120,130,132,210,230,302,310,312,320]
p find_even_numbers([2,2,8,8,2]) == [222,228,282,288,822,828,882]
p find_even_numbers([3,7,5]) == []
