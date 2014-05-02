class String
  def palindrome?
    self == self.reverse
  end

  def middle_with?(str)
    (self =~ /.+#{str}.+/)? true : false
  end
end
