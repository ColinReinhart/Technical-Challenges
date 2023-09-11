#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    print arr.sum-arr.sort[-1]
    print " "
    print arr.sum-arr.sort[0]
end

# miniMaxSum([1, 3, 5, 7, 9])
miniMaxSum([7, 69, 2, 221, 8974])
