class MergeSort2

  attr_reader :length
  attr_accessor :data

  def initialize(data_array)
    @length = data_array.length
    @data = create_inital_array(data_array)
  end

  def create_inital_array(data_array)
    data_array.collect { |data| [data] }
  end

  def get_first_from_data
    data.shift
  end

  def merge_elements(array1, array2)
    return array1 unless array2
    new_array = []
    while array1.length > 0 && array2.length > 0
      if array1.first > array2.first
        new_array << array1.shift
      else
        new_array << array2.shift
      end
    end
    (new_array << array1 << array2).flatten
  end

  def merge_layer
    next_level_data = []
    while data.length >= 2
      binding.pry
      next_level_data << merge_elements(get_first_from_data, get_first_from_data)
    end
    @data = next_level_data
  end

  def sort
    while data[0].length < length
      merge_layer
    end
  end

end



def create_random_array(max_num)
  (1..max_num).to_a.shuffle
end
