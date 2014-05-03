class Hash
  # Convert Hash into Object( like javascript )
  #
  # color = { red: 254, green: 177, blue: 100 }.to_obj
  #
  # color.red     #=> 254
  # color.green   #=> 177
  # color.blue    #=> 100
  def to_obj
    obj = Object.new

    each_pair do |name, value|
      name = name.to_sym
      
      if value.is_a?(Hash)
        obj.define_singleton_method(name){ value.to_obj }
      else
        obj.define_singleton_method(name){ value }
      end
      obj.define_singleton_method("#{name}="){|v| define_singleton_method(name){v} }
    end

    obj
  end
end
