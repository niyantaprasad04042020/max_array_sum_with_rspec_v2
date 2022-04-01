module FindMinMaxIndex

  def min_max_index(valid_array:)
    max_index     = 0
    min_index     = 0
    max_sum       = 0
    min_max_index = []

    for i in 0..valid_array.length() - 1
      array_sum = 0
      for j in i..valid_array.length() - 1
        array_sum   = valid_array[j] + array_sum
        if array_sum > max_sum
          max_sum   = array_sum
          min_index = i
          max_index = j
        end
      end
    end

    min_max_index << min_index
    min_max_index << max_index
    return min_max_index
  end

end