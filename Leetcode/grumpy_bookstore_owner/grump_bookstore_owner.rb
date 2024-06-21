# @param {Integer[]} customers
# @param {Integer[]} grumpy
# @param {Integer} minutes
# @return {Integer}
def max_satisfied(customers, grumpy, minutes)
  max = customers.each_with_index.inject(0) { |sum, (c, i)| grumpy[i] == 0 ? sum + c : sum }

  left = 0
  right = minutes - 1

  def calc_satisfaction(customers, grumpy)
    wip = 0
    customers.each_with_index do |c,i|
      if grumpy[i] == 0
        wip += c
      end
    end
    wip
  end

  def ungrump(cust, grump, max, left, right)
    temp = grump
    temp[left..right] = temp[left..right].map { |x| x = 0 }
    calc_satisfaction(cust, temp)
  end

  until right == customers.length + 1
    if customers.ungrump(customers, grumpy, max, left, right) > max
      max = customers.ungrump(customers, grumpy, max, left, right)
    end
    left += 1
    right += 1
  end
  require 'pry'; binding.pry
  max
end

p max_satisfied([1,0,1,2,1,1,7,5], [0,1,0,1,0,1,0,1], 3) # 16
