class String
  def palindrome?
    self == self.reverse
  end

  def middle_with?(str)
    (self =~ /.+#{str}.+/)? true : false
  end

  def sum_digit
    self.chars.map(&:to_i).inject(:+)
  end
end
