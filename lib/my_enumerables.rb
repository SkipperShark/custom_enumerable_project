module Enumerable
  # Your code goes here
  def my_each
    for ele in self do
      yield ele
    end
    self
  end

  def my_all?
    for ele in self do
      return false unless yield ele
    end
    true
  end

  def my_any?
    for ele in self do
      return true if yield ele
    end
    false
  end

  def my_count
    if block_given?
      reduce(0) do |sum, ele|
        sum += 1 if yield ele
        sum
      end
    else
      size
    end
  end

  def my_each_with_index
    index = 0
    for ele in self do
      yield(ele, index)
      index += 1
    end
  end

  def my_inject(initial_value)
    result = initial_value
    for ele in self
      result = yield(result, ele)
    end
    result
  end

  def my_map
    arr = []
    each do |ele|
      arr << yield(ele)
    end
    arr
  end
end



# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end
