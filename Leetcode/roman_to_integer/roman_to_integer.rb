# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_to_int_map = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  result = 0
  prev = 0

  s.each_char do |char|
    current = roman_to_int_map[char]

    if prev < current
      result -= prev
      result += current - prev
    else
      result += current
    end

    prev = current
  end

  result
end

p roman_to_int('III') # 3
p roman_to_int('IV') # 4
p roman_to_int('IX') # 9
p roman_to_int('LVIII') # 58
p roman_to_int('MCMXCIV') # 1994
