class Solution:
  def search(self, nums: List[int], target: int) -> int:
    low_index = 0
    high_index = len(nums) - 1

    while low_index <= high_index:
      half_index = int((low_index + high_index) / 2)
      guess = nums[half_index]

      if guess == target:
        return half_index

      if guess > target:
        high_index = half_index - 1
      else:
        low_index = half_index + 1
    return -1
