module MyEnumerable
  def all?
   
    result = true
    each do |el|
      # result = yield el ? true : false
      if !yield el
        result = false
      end
    end
    return result

    
  end

  def any?
    result = false
    each do |el|
      if yield el
        result = true
      end
    end
    return result

  end

  def filter
    myArray = []
    each do |el|
      if yield el
        myArray.push(el)
      end
    end
    return myArray
  end

  def display
    puts @list
  end
end