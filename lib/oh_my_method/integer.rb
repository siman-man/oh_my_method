class Integer
  def plus?
    self > 0
  end

  def minus?
    self < 0
  end

  def combination(k)
    self.factorial/(k.factorial*(self-k).factorial)
  end

  def permutation(k)
    self.factorial/(self-k).factorial
  end

  def factorial
    return 1 if self.zero?
    (1..self).inject(:*)
  end
end
