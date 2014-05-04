class Array
  def deep_select
    block_given? or return enum_for(__method__)

    res = []

    each{|elem| res << elem.deep_dup if yield(elem)}

    res
  end

  def mean
    inject(:+)/size.to_f
  end
end
