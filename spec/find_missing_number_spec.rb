# frozen_string_literal: true

require 'rspec'
require_relative '../find_missing_number'

RSpec.describe 'find_missing_number' do
  it 'finds the missing number in first example' do
    arr = [4, 3, 6, 2, 1, 7]
    expect(find_missing_number(arr)).to eq(5)
  end
  it 'finds the missing number in first example' do
    arr = [4, 3, 6, 2, 1, 7, 9]
    expect(find_missing_number(arr, nth: 2)).to eq(8)
  end
  it 'finds the missing number in first example' do
    arr = [4, 3, 6, 2, 1, 7, 9]
    expect(find_missing_number(arr, nth: 3)).to eq(10)
  end
end
