# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
  result = []
  max_length = high.to_s.length

  (1..max_length).each do |length|
    (1..(10 - length)).each do |start|
      num = start
      (length - 1).times { num = num * 10 + (num % 10 + 1) }
      result << num if num >= low && num <= high
    end
  end

  result.sort
end


p sequential_digits(100, 300)
p sequential_digits(1000, 13000)
