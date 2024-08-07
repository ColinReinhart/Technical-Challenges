# @param {Integer} num
# @return {String}
def number_to_words(num)
  less_than_20 = %w[Zero One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen]
  tens = %w[Zero Ten Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety]
  thousands = ["", "Thousand", "Million", "Billion"]

  return less_than_20[0] if num == 0

  result = ""
  i = 0

  while num > 0
    if num % 1000 != 0
      result = helper(num % 1000, less_than_20, tens) + thousands[i] + " " + result
    end
    num /= 1000
    i += 1
  end

  result.strip
end

def helper(num, less_than_20, tens)
  if num == 0
    ""
  elsif num < 20
    less_than_20[num] + " "
  elsif num < 100
    tens[num / 10] + " " + helper(num % 10, less_than_20, tens)
  else
    less_than_20[num / 100] + " Hundred " + helper(num % 100, less_than_20, tens)
  end
end

p number_to_words(123)
p number_to_words(12345)
p number_to_words(1234567)
