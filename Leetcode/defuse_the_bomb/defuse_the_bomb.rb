# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  if k == 0
    arr = []
    code.count.times do
      arr << 0
    end
    return arr
  elsif k > 0
    left = 1
    right = k
    arr = []
    wip = code.length

    loop = [code, code].flatten
    require 'pry'; binding.pry
    wip.times do
      arr << loop[left..right].sum
      left += 1
      right += 1
    end

    return arr
  else
    left = 0
    right = (k * -1) -1
    arr = []
    wip = code.length

    loop = code.unshift(code[k..-1]).flatten

    wip.times do
      arr << loop[left..right].sum
      left += 1
      right += 1
    end
    return arr
  end

end

# p decrypt([5,7,1,4], 3) #[12,10,16,13]
# p decrypt([1,2,3,4], 0) #[0,0,0,0]
# p decrypt([2,4,9,3], -2) #[12,5,6,13]
p decrypt([10,8,7,7,5,3,9,6], 4) #[27,22,24,23,28,33,31,32]
