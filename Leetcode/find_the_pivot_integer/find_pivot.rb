# @param {Integer} n
# @return {Integer}
def pivot_integer(n)
  arr = Array.new(n) { |i| i + 1 }
  arr.each_with_index do |num, i|
    if arr[0..i].sum == arr[i ..-1].sum
      return num
    elsif arr[0..i].sum > arr[i ..-1].sum
      return -1
    end
  end
end

p pivot_integer(8)
p pivot_integer(1)
p pivot_integer(4)
