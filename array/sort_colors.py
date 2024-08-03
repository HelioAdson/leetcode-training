class Solution(object):
  def sortColors(self, nums):
    zeros = 0
    ones = 0

    for i in nums:
      if i == 0:
        zeros += 1
      elif i == 1:
        ones += 1

    for i in range(0, zeros):
      nums[i] = 0

    for i in range(zeros, zeros + ones):
      nums[i] = 1

    for i in range(zeros + ones, len(nums)):
      nums[i] = 2
