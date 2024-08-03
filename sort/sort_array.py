
#quick sort

class Solution(object):
  def sortArray(self, nums):
    if len(nums) < 2:
        return nums

    pivot_index = random.randint(0, len(nums) - 1)
    pivot = nums[pivot_index]
    lowest_values = []
    equal_values = []
    major_values = []

    for i in nums:
      if i < pivot:
        lowest_values.append(i)
      elif i == pivot:
        equal_values.append(i)
      else:
        major_values.append(i)

    return self.sortArray(lowest_values) + equal_values + self.sortArray(major_values)
