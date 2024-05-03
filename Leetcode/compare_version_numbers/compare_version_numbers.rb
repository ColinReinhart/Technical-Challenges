# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  v1 = version1.split('.').map { |x| x.to_i }
  v2 = version2.split('.').map { |x| x.to_i }
  if v1.count != v2.count
    if v1.count > v2.count
      (v1.count - v2.count).times do
        v2 << 0
      end
    else
      (v2.count - v1.count).times do
        v1 << 0
      end
    end
  end
  v1.each_with_index do |char, index|
    if v2[index] == nil
      return 1
    elsif char > v2[index]
      return 1
    elsif char < v2[index]
      return -1
    end
  end
  return 0
end

# p compare_version("1.01", "1.001")
# p compare_version("1.0", "1.0.0")
# p compare_version("0.1", "1.1")
# p compare_version("1.0.1", "1")
# p compare_version("1", "1.1")
p compare_version("1.0", "1.0.0")
