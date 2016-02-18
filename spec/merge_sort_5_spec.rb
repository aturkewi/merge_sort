require_relative 'spec_helper'

describe 'combine' do
  it 'takes two sorted arrays into one sorted array' do
    expect(combine([1,3],[0,7])).to eq([0,1,3,7])
  end

  it 'takes in an array and a nil, and returns the first array' do
    expect(combine([4,8,19],nil)).to eq([4,8,19])
  end

  it 'can combine arrays of different sizes' do
    expect(combine([3,5,9,12],[1,7])).to eq([1,3,5,7,9,12])
  end
end

describe 'merge_sort' do
  let(:shuffle_array) {(0..57).to_a.shuffle}
  let(:sorted_array) {(0..57).to_a}

  it 'sort the array' do
      expect(merge_sort(shuffle_array)).to eq(sorted_array)
  end

  it 'sorts array of length 1' do
    expect(merge_sort([1])).to eq([1])
  end

  it 'sorts array of length 2' do
    expect(merge_sort([2,1])).to eq([1,2])
  end

end
