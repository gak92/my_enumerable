module MyEnumerable
  def all?
    result = true
    each do |el|
      # result = yield el ? true : false
      result = false unless yield el
    end
    result
  end

  def any?
    result = false
    each do |el|
      result = true if yield el
    end
    result
  end

  def filter
    my_array = []
    each do |el|
      my_array.push(el) if yield el
    end
    my_array
  end

  def display
    puts @list
  end
end
