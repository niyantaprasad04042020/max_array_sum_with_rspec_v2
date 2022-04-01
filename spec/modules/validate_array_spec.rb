require 'spec_helper'
require 'pry'
require 'rails_helper'
require_relative '../../lib/validate_array'

RSpec.describe ValidateArray do

  let(:valid_array) { [1, 0, 2, -3, 1, 2, 1] }
  
  let(:invalid_array) { [1, 0, "a", -1, 0.1] }

  it "should return an array" do
    expect(ValidateArray.check_for_valid_array(array: valid_array)).to be_an(Array)
  end

   it "should not return an array" do
    expect(ValidateArray.check_for_valid_array(array: invalid_array)).not_to be_an(Array)
  end
end