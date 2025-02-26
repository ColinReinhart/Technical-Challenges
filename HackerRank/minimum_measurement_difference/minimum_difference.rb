#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'minimumDifference' function below.
#
# The function accepts INTEGER_ARRAY measurements as parameter.
#

def minimumDifference(measurements)
  measurements.sort!
  min_diff = -1
  min_diff_pair = []
    # Write your code here
  measurements.each_with_index do |x,i|
    measurements[i+1..-1].each do |y|
      if min_diff == -1
        min_diff = ((x)-(y)).abs
        min_diff_pair << [x,y]
      elsif ((x)-(y)).abs < min_diff
        min_diff = ((x)-(y)).abs
        min_diff_pair = [x, y]
      elsif ((x)-(y)).abs == min_diff
        min_diff_pair << [x, y]
      end
    end
  end
  min_diff_pair.each do |x,y|
    print "#{x} #{y}"
  end
end

# p minimumDifference([-1,3,6,-5,0]) #[0,3][3,6]
# p minimumDifference([-3,1,-1,-4, 0]) #[-4,-3][-1,0][0,1]
p minimumDifference([5,-9,-5,9,10,12]) #[9,10]
