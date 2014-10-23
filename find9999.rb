class Find9999
  def initialize()
    @All10000_array = []
    for i in 1..10000 do
      @All10000_array.push(i)
    end
  end
  
  def execute(find9999_array)
    return @All10000_array - find9999_array
  end
end
