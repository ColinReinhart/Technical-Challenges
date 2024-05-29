# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  if num_rows == 1
    return s
  end

  split = s.split('')
  arr = []
  num_rows.times { arr << [] }
  wip = arr.length - 1
  target = 0

  until split == [] do
    if target >= 0 && target < num_rows - 1
      arr[target] << split.shift
      target += 1
    elsif target == num_rows - 1
      until target == 0
        arr[target] << split.shift
        target -=1
      end
    end
  end

  arr.join
end

p convert("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR"
p convert("PAYPALISHIRING", 4) == "PINALSIGYAHRPI"
p convert("A", 1) == "A"
