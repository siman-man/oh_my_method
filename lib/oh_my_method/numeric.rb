class Numeric
  # Check if a number is not zero.
  # 
  # 0.notzero?    #=> false
  # 1.notzero?    #=> true
  def notzero?
    !self.zero?
  end
end
