# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = current_max = nums[0]
  for i in nums[1..] do
    if current_max < 0
      current_max = i
    else
      current_max = current_max + i
    end
    max = [max, current_max].max
  end
  max
end
