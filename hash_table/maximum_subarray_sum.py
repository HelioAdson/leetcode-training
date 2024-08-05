class Solution(object):
  def maximumSubarraySum(self, nums, k):
    hash_table = {}
    max_sum = None

    prefix_sums = [0]
    for num in nums:
      prefix_sums.append(prefix_sums[-1] + num)

    for index, num in enumerate(nums):
      if hash_table.get(num + k) is not None:
        new_max = prefix_sums[index + 1] - hash_table.get(num + k)
        if max_sum is None or new_max > max_sum:
          max_sum = new_max

      if hash_table.get(num - k) is not None:
        new_max = prefix_sums[index + 1] - hash_table.get(num - k)
        if max_sum is None or new_max > max_sum:
          max_sum = new_max

      if hash_table.get(num) is not None:
        # only store the smallest index prefix sum, as we will decrease it later
        hash_table[num] = min(prefix_sums[index], hash_table[num])
      else:
        hash_table[num] = prefix_sums[index]

    return max_sum if max_sum is not None else 0
