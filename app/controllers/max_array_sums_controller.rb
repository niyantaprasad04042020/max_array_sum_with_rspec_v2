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

    max_sum_sub_array = SubArray.new(integer_array: sub_array)
    max_sum_sub_array.save!

    respond_to do |format|
      if max_sum_sub_array
        format.json { render json: max_sum_sub_array.to_json }
      else
        format.json { render json: max_sum_sub_array.errors }
      end
    end

  end

  private

  def array_params
    params.require(:array)
  end
end
