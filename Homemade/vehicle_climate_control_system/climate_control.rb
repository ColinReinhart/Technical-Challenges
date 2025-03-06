# @param {Integer} outside_temp
# @param {Integer} in_cabin_temp
# @param {Integer} hvac_temp
# @param {Integer} set_temp
# @return {Array<Boolean, Boolean, Boolean>}
def climate_control(outside_temp, in_cabin_temp, hvac_temp, set_temp)
  require 'pry'; binding.pry
end

p climate_control(30, 40, 50, 60) #[false, true, true]
# p climate_control(90, 75, 60, 65) #[true, true, false]
# p climate_control(72, 71, 70, 72) #[true, false, false]
