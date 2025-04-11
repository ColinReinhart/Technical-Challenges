# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_symmetric_integers(low, high)
  count = 0
  arr = (low..high).to_a

  arr.each do |num|
    next if num.to_s.split('').count.odd?

    digits = []
    num.to_s.split('').each { |digit| digits << digit.to_i }

    count += 1 if digits[0..(digits.length / 2) - 1].sum == digits[(digits.length / 2)..-1].sum
  end

  count
end

p count_symmetric_integers(1, 100) #9
p count_symmetric_integers(1200, 1230) #4
