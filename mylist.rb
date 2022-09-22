require_relative 'myenumerable'

class MyList
  def  initialize(*list)
    @list = list
  end

  include MyEnumerable

  def each
    @list.each { |e| yield e if block_given? }
  end

end

list = MyList.new(1, 2, 3, 4)
# puts list.display

puts "Check e < 5: "
puts list.all? {|e| e < 5}

puts "Check e > 5: "
puts list.all? {|e| e > 5}
