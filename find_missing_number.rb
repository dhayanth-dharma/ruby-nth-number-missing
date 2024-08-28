# frozen_string_literal: true

# Find the nth missing number in a sequence
def find_missing_number(arr, nth: 1)
  return nth if arr.empty?

  # Sort and remove duplicates
  sorted_arr = arr.uniq.sort

  # Initialize the variables
  missing_count = 0
  expected_number = 1
  index = 0

  # Loop through and count missing numbers
  while missing_count < nth
    if index < sorted_arr.size && sorted_arr[index] == expected_number
      index += 1
    else
      missing_count += 1
      return expected_number if missing_count == nth
    end
    expected_number += 1
  end
end
