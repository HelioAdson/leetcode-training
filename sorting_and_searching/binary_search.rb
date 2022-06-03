# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

# didn't work
def search(nums, target)
  start_pointer, end_pointer = 0, nums.length - 1

  return 0 if end_pointer == 0 && nums[end_pointer] == target

  while start_pointer < end_pointer
    mid = (start_pointer + end_pointer) / 2
    if nums[mid] <= target
      start_pointer = mid + 1
    else
      end_pointer = mid
    end
  end
  return nums[start_pointer - 1] if start_pointer > 0 && nums[start_pointer - 1] == target
  return -1
end


#recursive O(log n)
def search(nums, target, offset = 0)
  mid = nums.length / 2
  index = mid + offset

  return index if nums[mid] == target
  return -1 if nums.length == 1

  if nums[mid] > target
    search(nums[0..mid - 1], target, offset)
  else
    search(nums[mid..nums.length], target, index)
  end
end

