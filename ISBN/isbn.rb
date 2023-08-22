isbn = ("3598215088")

module VerifyIsbn
  def self.valid?(isbn)
    isbn = isbn.gsub('-', '')
    return false if isbn.length > 10
    wip = isbn.each_char.with_index.sum { |num, index| index == 9 && isbn[index] == 'X' ? 10 : isbn[index].to_i * (10 - index) }
    (wip % (11)).zero?
  end
end

puts VerifyIsbn.valid?("3-5982-1508-8")
puts VerifyIsbn.valid?("35-98-21  5089")
puts VerifyIsbn.valid?("3598215087")
puts VerifyIsbn.valid?("359821508611")
