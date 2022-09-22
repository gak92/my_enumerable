module MyEnumerable
  def all?
    # @list.each do |el|
    #   puts yield el
    # end
    each do |el|
      puts yield el
    end
  end

  def any

  end

  def filter

  end

  def display
    puts @list
  end
end