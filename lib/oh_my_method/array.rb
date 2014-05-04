class Array
  # return duplicate of result of Array#select.
  #
  # langs = [ "Ruby", "R", "Python", "Java", "JavaScript" ]
  # dup = langs.deep_select{|lang| lang.first == "R"}
  # dup.first.upcase!
  #
  # langs.first     #=> "Ruby"
  # dup.first       #=> "RUBY"
  def deep_select
    block_given? or return enum_for(__method__)

    res = []

    each{|elem| res << elem.deep_dup if yield(elem)}

    res
  end

  # return the mean
  # 
  # array = (1..10).to_a
  # array.mean    #=> 50.5
  def mean
    inject(:+)/size.to_f
  end
end
