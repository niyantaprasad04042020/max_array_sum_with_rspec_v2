module ValidateArray

  def check_for_valid_array(array:)
    if array.flatten.uniq.all?{|i| i.is_a?(Integer)}
      return array
    else
      return "Please Input Array of Integers!"
      exit
    end
  end

end