def largest_odd_number(num)
  wip = []
  odd_check = []
  arr = num.reverse.split('')
  arr.each do |n|
    if n.to_i.odd?
      odd_check << n
    end
  end
  if odd_check == []
    return ''
  end
  arr.each_with_index do |n, i|
    if n.to_i.odd?
      wip << arr[i..-1]
      return wip.join.reverse
    end
  end
end

p largest_odd_number("52")
p largest_odd_number("4206")
p largest_odd_number("35427")
p largest_odd_number("10133890")
