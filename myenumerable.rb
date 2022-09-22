module MyEnumerable
  def all?
    # @list.each do |el|
    #   puts yield el
    # end
    # each do |element| # for each element of the array
    #   return true unless block_given? # this makes sure our program doesn't crash if we don't give all? a block.
    #   true_false = yield(element) # pass that element to the block
    #   return false unless true_false # if for ANY element the block evaluates to false, return false
    # end
    # return true # Hooray! The loop which went over each element of our array ended, and none evaluted to false, that means all elements must have been true for the block.
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

  end

  def display
    puts @list
  end
end