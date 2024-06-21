# @param {Integer[]} customers
# @param {Integer[]} grumpy
# @param {Integer} minutes
# @return {Integer}
def max_satisfied(customers, grumpy, minutes)
  max = customers.each_with_index.inject(0) { |sum, (c, i)| grumpy[i] == 0 ? sum + c : sum }
  increase = 0

  left = 0
  right = minutes - 1

  until right == customers.length
    inc = 0

    customers[left..right].each_with_index do |c,i|
      if grumpy[left..right][i] == 1
        inc += c
      end
    end

    if inc > increase
      increase = inc
    end

    left += 1
    right += 1
  end
  max + increase
end

p max_satisfied([1,0,1,2,1,1,7,5], [0,1,0,1,0,1,0,1], 3) # 16
p max_satisfied([1], [0], 1) # 1
