require 'spec_helper'
require 'pry'
require 'rails_helper'
require_relative '../../lib/find_min_max_index'

RSpec.describe FindMinMaxIndex do

  it "should return an array" do
    valid_array   = FactoryBot.create :sub_array, :valid_array
    max_array_sum = MaxArraySumsController.new()
    expect(max_array_sum.min_max_index(valid_array: valid_array.integer_array)).to be_an(Array)
  end
  
end