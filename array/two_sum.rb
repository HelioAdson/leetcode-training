def two_sum(nums, target)
  nums.each_with_index do |num, index|
    return [current_index, index] if (nums[current_index] + num) == target
    current_index = index
  end
end

def two_sum(nums, target)
  nums.each_with_index do |pivot, pivot_index|
    nums.each_with_index do |num, index|
      next if pivot_index == index
      return [pivot_index, index] if pivot + num == target
    end
  end
end

# It worked
def two_sum(nums, target)
  nums.each_with_index do |num, index|
    second_num = target - num
    second_num_index = nums.index(second_num)
    return [index, second_num_index] if second_num_index && (second_num_index != index)
  end
end
