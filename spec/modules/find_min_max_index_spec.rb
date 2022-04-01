require 'spec_helper'
require 'pry'
require 'rails_helper'
require_relative '../../lib/find_min_max_index'

RSpec.describe FindMinMaxIndex do

  FactoryBot.define do
    factory :sub_array do
      integer_array { [1, 0, 2, -3, 1, 2, 1] }
    end
  end

  it "should return an array" do
  	binding.pry
    valid_array = build(:sub_array)
    expect(FindMinMaxIndex.min_max_index(valid_array: valid_array.integer_array)).to be_an(Array)
  end
  
end