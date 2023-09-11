#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  pos = 0
  zero = 0
  neg = 0
  arr.each do |num|
    if num > 0
      pos += 1
    elsif num == 0
      zero +=1
    else num < 0
      neg +=1
    end
  end
  p (pos.to_f/arr.count.to_f).round(6)
  p (neg.to_f/arr.count.to_f).round(6)
  p (zero.to_f/arr.count.to_f).round(6)
end

plusMinus([-4, 3, -9, 0, 4, 1])
