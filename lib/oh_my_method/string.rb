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

  def first
    self[0]
  end

  def last
    self[-1]
  end

  def shuffle
    if RUBY_VERSION < "2.0"
      self.split('').shuffle.join
    else
      self.chars.shuffle.join
    end
  end
end
