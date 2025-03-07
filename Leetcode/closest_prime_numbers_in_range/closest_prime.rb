# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def closest_primes(left, right)
  sieve = Array.new(right + 1, true)
  sieve[0] = sieve[1] = false

  (2..Math.sqrt(right)).each do |i|
    next unless sieve[i]
    (i * i..right).step(i) { |j| sieve[j] = false }
  end

  primes = (left..right).select { |num| sieve[num] }

  return [-1, -1] if primes.size < 2

  min_gap = Float::INFINITY
  closest_pair = [-1, -1]

  (0...primes.size - 1).each do |i|
    diff = primes[i + 1] - primes[i]
    if diff < min_gap
      min_gap = diff
      closest_pair = [primes[i], primes[i + 1]]
    end
  end

  closest_pair
end

p closest_primes(10, 19) #[11,13]
p closest_primes(4, 6) #[-1,-1]
