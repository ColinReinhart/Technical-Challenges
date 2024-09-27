class MyCalendar
    def initialize()
      @calendar = []
    end


=begin
    :type start: Integer
    :type end: Integer
    :rtype: Boolean
=end
    def book(start, finish)
      require 'pry'; binding.pry
    end


end

myCalendar = MyCalendar.new
puts myCalendar.book(10, 20)
puts myCalendar.book(15, 25)
puts myCalendar.book(20, 30)
