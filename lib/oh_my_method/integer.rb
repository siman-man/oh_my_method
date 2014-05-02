class Integer
  def plus?
    self > 0
  end

  def minus?
    self < 0
  end

  def factorial
    return 1 if self.zero?
    (1..self).inject(:*)
  end
end
