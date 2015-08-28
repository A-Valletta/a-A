require 'byebug'

def merge_sort(arr)
  # debugger
  return arr if arr.length == 1
  midpoint = arr.length / 2

  merge(merge_sort(arr[0...midpoint]), merge_sort(arr[midpoint..-1]))
end

def merge(arr_1, arr_2)
  # debuLgger
  final = []
  full_length = (arr_1 + arr_2).flatten.length

  full_length.times do
    if arr_1.empty?
      final << arr_2
    elsif arr_2.empty?
      final << arr_1
    elsif arr_1[0] < arr_2[0]
      final << arr_1.shift
    else
      final << arr_2.shift
    end
  end
  final.flatten.uniq
end
