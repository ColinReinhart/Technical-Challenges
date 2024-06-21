def max_satisfied(customers, grumpy, minutes)
  max_satisfied = customers.each_with_index.inject(0) { |sum, (c, i)| grumpy[i] == 0 ? sum + c : sum }

  current_increase = 0
  (0...minutes).each do |i|
    current_increase += customers[i] if grumpy[i] == 1
  end

  max_increase = current_increase

  (minutes...customers.length).each do |i|
    current_increase -= customers[i - minutes] if grumpy[i - minutes] == 1
    current_increase += customers[i] if grumpy[i] == 1
    max_increase = [max_increase, current_increase].max
  end

  max_satisfied + max_increase
end

p max_satisfied([1,0,1,2,1,1,7,5], [0,1,0,1,0,1,0,1], 3) #16
