def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  lowest_temperatures = []
  outer_index = 0 
  while src[outer_index] do
    inner_index = 1
    day_lowest_temperature = src[outer_index][0]
    while src[outer_index][inner_index] do 
      if src[outer_index][inner_index] < day_lowest_temperature
        day_lowest_temperature = src[outer_index][inner_index]
      end
      inner_index += 1     
    end 
    lowest_temperatures << day_lowest_temperature
    outer_count += 1
  end
end