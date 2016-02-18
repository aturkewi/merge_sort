def combine(array1, array2)
  return array1 if array2 == nil
  new_array = []
  while array1.length != 0 && array2.length != 0
    if array1.first < array2.first
      new_array << array1.shift
    else
      new_array << array2.shift
    end
  end
  new_array + array1 + array2
end

def sort(array)
  new_array = []
  while array.length > 0
    new_array << combine(array.shift, array.shift)
  end
  new_array.length == 1 ? new_array : sort(new_array)
end


def merge_sort(array)
  split_array = array.collect{|item| [item]}
  sort(split_array)
end

a = (1..50).to_a.shuffle
