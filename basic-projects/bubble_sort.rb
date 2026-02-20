# frozen_string_literal: true

def bubble_sort(arr)
  (arr.length - 1).downto(0) do |end_i|
    # Loop through the array comparing adjacent indices, every round stop checking at one lower index
    (0...end_i).each do |index|
      a = arr[index]
      b = arr[index + 1]

      # Swap the elements when a is bigger then b
      if a > b
        arr[index] = b
        arr[index + 1] = a
      end
    end
  end

  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
