class MaxArraySumsController < ApplicationController
  include ValidateArray
  include FindMinMaxIndex

  def sub_array

    @valid_array   = check_for_valid_array(array: array_params)

    @min_max_index = min_max_index(valid_array: @valid_array)

    sub_array      = []  
      
    for i in @min_max_index[0]..@min_max_index[1]
      sub_array << @valid_array[i]
    end

    return sub_array

  end

  private

  def array_params
    params.require(:array)
  end
end
