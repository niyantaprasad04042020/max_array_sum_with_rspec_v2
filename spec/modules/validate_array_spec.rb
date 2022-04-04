require 'spec_helper'
require 'pry'
require 'rails_helper'
require_relative '../../lib/validate_array'

RSpec.describe ValidateArray do

  FactoryBot.define do
    factory :sub_array do
      trait :valid_array do
        integer_array { [1, 0, 2, -3, 1, 2, 1] }
      end

      trait :invalid_array do
        integer_array { [1, 0, "a", -1, 0.1] }
      end
    end
  end

  let(:max_array_sum) { MaxArraySumsController.new }

  it "should return an array" do
  	valid_array   = FactoryBot.create :sub_array, :valid_array
    expect(max_array_sum.check_for_valid_array(array: valid_array.integer_array)).to be_an(Array)
  end

   it "should not return an array" do
  	invalid_array = FactoryBot.create :sub_array, :invalid_array
    expect(max_array_sum.check_for_valid_array(array: invalid_array.integer_array)).not_to be_an(Array)
  end
end