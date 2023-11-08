def poor_pigs(buckets, minutes_to_die, minutes_to_test)
  attempts = minutes_to_test / minutes_to_die
  require 'pry'; binding.pry
end

p poor_pigs(4, 15, 30)
