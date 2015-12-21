class MergeSort

  attr_accessor :array, :finish_array

  def initialize(array)
    @array = array
    @finish_array =[]
  end

  def set_up_splits
    while array.length > 0
      small_array =[]
      2.times {small_array << array.shift}
      finish_array << small_array
    end
  end

  def order_first_set
    finish_array.each do |small_array|
      if (small_array[0] > small_array[1]) && small_array[1]
        small_array[0], small_array[1] = small_array[1], small_array[0]
      end
    end
  end

  

end
