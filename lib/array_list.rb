# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = []
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise "bad things" if @size == @storage.length
    @storage[@size] = value
    @size += 1

  end

  # Deletes the _last_ value in the array
  def delete
    rails "bad things" if @size == 0
    # @storage[@size] = 0
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end

    def size  #the number of elements that we care about.
      return @size

      count = 0
      @size.times do
        count += 1
      end
      return count
    end
  end

  def max
    raise "bad things" if @size == 0
    biggest = @storage[0]
    @size.times do |i|
      if @storage[i] > biggest
        biggest = @storage[i]
      end
    end
    return biggest
  end

  def to_s
    return @storage.length.times do |i|
      str = ""
      @size.length.times do |i|
        str += @storage[i] + ", "
      end
      return "[#{str[0..-3]}]"
    end
  end
end

# ./lib/array_list.rb
