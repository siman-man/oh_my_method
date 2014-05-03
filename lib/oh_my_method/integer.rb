class Integer
  # Check if a number is positive.
  #
  # 0.plus?     #=> false
  # 1.plus?     #=> true
  def plus?
    self > 0
  end

  # Check if a number is negative.
  #
  # 3.minus?    #=> false
  # -1.minus?   #=> true
  def minus?
    self < 0
  end

  # calculate number of combinations.
  #
  # 4.combination(1)    #=> 4
  # 10.combination(5)   #=> 252
  def combination(k)
    self.factorial/(k.factorial*(self-k).factorial)
  end

  # calculate number of permutation.
  #
  # 3.permutation(2)    #=> 6
  # 20.permutation(5)   #=> 1860480
  def permutation(k)
    self.factorial/(self-k).factorial
  end

  # calculate factorial
  # 
  # 0.factorial     #=> 1
  # 10.factorial    #=> 3628800
  def factorial
    return 1 if self.zero?
    (1..self).inject(:*)
  end
end
