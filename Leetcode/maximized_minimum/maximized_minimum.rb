# @param {Integer} n
# @param {Integer[]} quantities
# @return {Integer}
def minimized_maximum(n, quantities)
    (quantities.sum.to_f / n.to_f).ceil
end

p minimized_maximum(6, [11,6])
p minimized_maximum(7, [15,10,10])
p minimized_maximum(1, [1000])
