# split array into individual parts

# grap two first

# compare first item of each sub-array, add lowest to new array
  # is there is nothing to compare it to, add the reminaing array to sub array

# rinse and repeat until 1 item remains in array


require'pry'
def split_array(array)
  array.collect { |data| [data] }
end

def combine(item1, item2)
  new_array=[]
  return item1 if item2 == nil
  while item1.length != 0 && item2.length != 0
    if item1[0] < item2[0]
      new_array << item1.shift
    else
      new_array << item2.shift
    end
  end
  new_array + item1 + item2
end

def sort(array)
  new_array = []
  while array.length != 0
    new_array << combine(array.shift, array.shift)
  end
  new_array.length == 1 ? new_array : sort(new_array)
end

def merge_sort(array)
  array = split_array(array)
  sort(array)
end

def shuffle_array(size)
  (0..size).to_a.shuffle
end
