require_relative 'myenumerable'

class MyList
  def  initialize(*list)
    @list = list
  end

  include MyEnumerable

  # def each do
  #   @list.each { |e| yield e if block_given? }
  # end

end

list = MyList.new(1, 2, 3, 4)
puts list.display