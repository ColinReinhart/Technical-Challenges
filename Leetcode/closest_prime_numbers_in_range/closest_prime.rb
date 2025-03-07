# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def closest_primes(left, right)
  return [-1, -1] if right < 2

  limit = Math.sqrt(right).to_i
  is_prime = Array.new(limit + 1, true)
  is_prime[0] = is_prime[1] = false

  (2..limit).each do |i|
    next unless is_prime[i]
    (i * i..limit).step(i) { |j| is_prime[j] = false }
  end
  small_primes = (2..limit).select { |x| is_prime[x] }

  range_size = right - left + 1
  range_prime = Array.new(range_size, true)

  small_primes.each do |p|
    start = [p * p, (left + p - 1) / p * p].max
    (start..right).step(p) { |j| range_prime[j - left] = false }
  end

  primes = (left..right).select { |i| i >= 2 && range_prime[i - left] }

  return [-1, -1] if primes.size < 2

  min_gap = Float::INFINITY
  closest_pair = [-1, -1]

  primes.each_cons(2) do |a, b|
    diff = b - a
    if diff < min_gap
      min_gap = diff
      closest_pair = [a, b]
      break if diff == 2
    end
  end

  closest_pair
end

p closest_primes(10, 19) #[11,13]
p closest_primes(4, 6) #[-1,-1]
