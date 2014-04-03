class Array
  def my_each (&blk)
    index = 0
    while index < self.count
      blk.call(self[index])
      index += 1
    end

    self
  end

  def my_map (&blk)
    array = []
    index = 0
    while index < self.count
      array << blk.call(self[index])
      index += 1
    end

    array
  end

  def my_select (&blk)
    array = []
    index = 0
    while index < self.count
      array << self[index] if blk.call(self[index])
      index += 1
    end

    array
  end

  def my_inject (&blk)
    variable = nil
    index = 0
    while index < self.count
      array << self[index] if blk.call(self[index])
      index += 1
    end

    array
  end
end

# Random tests
["one", "two", "three"].my_each { |string| puts string }

p ["one", "two", "three"].my_map { |string| string * 2 }

p ["one", "two", "three"].my_select { |string| string.length <= 3}

# Inject test
p ["one", "two", "three"].my_inject { |string| string.length <= 3}