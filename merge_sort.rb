def merge_sort(nums)
  if nums.length < 2
    return nums
  end

  mid_index = nums.length / 2
  left_arr = merge_sort(nums[0..mid_index - 1])
  right_arr = merge_sort(nums[mid_index..nums.length - 1])

  sorted = []
  sorted_length = left_arr.length + right_arr.length
  i = 0
  j = 0
  while sorted.length < sorted_length
    if left_arr[i].nil?
      sorted.push(right_arr[j])
      j += 1
    elsif right_arr[j].nil?
      sorted.push(left_arr[i])
      i += 1
    else
      if left_arr[i] < right_arr[j]
        sorted.push(left_arr[i])
        i += 1
      else
        sorted.push(right_arr[j])
        j += 1
      end
    end
  end
  sorted
end

p merge_sort([1,8,2,7,3,6,5,4])
puts ''
p merge_sort([1,8,2,7,6,5,4])