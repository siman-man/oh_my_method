class String
  # Check if a string is palindrome.
  # 
  # "hello".palindrome?   #=> false
  # "ABCBA".palindrome?   #=> true
  def palindrome?
    self == self.reverse
  end

  # Check if argument is contain middle range in self.
  # 
  # "hello".middle_with?("ell")     #=> true
  # "hello".middle_with?("ello")    #=> false
  # "hello".middle_with?("hel")     #=> false
  # "ABABA".middle_with?("BAB")     #=> true
  def middle_with?(str)
    (self =~ /.+#{str}.+/)? true : false
  end

  # Calculate sum of each digit.
  # 
  # "11111".sum_digit       #=> 5
  # "123456789".sum_digit   #=> 45
  def sum_digit
    self.chars.map(&:to_i).inject(:+)
  end

  # Get the first character.
  #
  # "Hello".first   #=> "H"
  # "Ruby".first   #=> "R"
  def first
    self[0]
  end

  # Get the last character.
  #
  # "Hello".last   #=> "o"
  # "Ruby".last   #=> "y"
  def last
    self[-1]
  end

  # Return the string shuffled.
  # 
  # "Hello".shuffle   #=> "elHlo"
  # "Ruby".shuffle    #=> "bRuy"
  def shuffle
    if RUBY_VERSION < "2.0"
      self.split('').shuffle.join
    else
      self.chars.shuffle.join
    end
  end
end
