class Array

  def sum
    self.inject(:+)
  end

  def avg
    sum.to_f / count
  end
end

numbers = [5,6,7,8]

# puts numbers.sum.to_f / numbers.count

puts numbers.avg
