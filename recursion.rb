def range(start, end_num)
  array = []
  if start == end_num
    array << end_num
  else
   array << start
   array + range(start + 1, end_num)
  end
end

# p range(1, 10)

class Array
  def r_sum
    if self.count == 1
      self.first
    else
      self.pop + self.r_sum
    end
  end

  def i_sum
    self.inject(:+)
  end

  #DEEP DUP
  def deep_dup

  end
end

# p [1, 2, 3].r_sum #Fix destructive nature of solution
# p [1, 2, 3].i_sum
#
# puts ""

def exp_r1 (base, exponent)
  if exponent == 0
    return 1
  else
    base * exp_r1(base, exponent - 1)
  end
end

def exp_r2 (base, exponent)
  if exponent == 0
    return 1
  elsif exponent % 2 == 0
    exp_r2(base, exponent / 2) ** 2
  else
    base * (exp_r2(base, (exponent - 1) / 2) ** 2)
  end
end

# p exp_r1(5, 0)
# p exp_r1(5, 1)
# p exp_r1(5, 2)
#
# p exp_r2(5, 0)
# p exp_r2(5, 1)
# p exp_r2(5, 2)

def fibonacci_i(n)
  answer = []
  (0..n).each do |element|
    if answer.length == 0
      answer<<0
    elsif answer.length == 1
      answer<<1
    else
      answer<< answer[-2] + answer[-1]
    end
  end
  answer
end

def fibonacci_r(num)
  if num == 0
    return [0]
  elsif num == 1
    return fibonacci_r(num-1) + [1]
  else
    array = fibonacci_r(num-1)
    return array + [array[-2] + array[- 1]]
  end
end

p fibonacci_r(0)
p fibonacci_r(1)
p fibonacci_r(6)
puts ""

p fibonacci_i(0)
p fibonacci_i(1)
p fibonacci_i(6)



