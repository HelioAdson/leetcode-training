
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


# merge sort

class Solution(object):
  def sortArray(self, nums):
    #base case
    if len(nums) < 2:
      return nums

    mid = len(nums) // 2
    left_array = self.sortArray(nums[:mid])
    right_array = self.sortArray(nums[mid:])
    return self.merge(left_array, right_array)

  def merge(self, left_array, right_array):
    sorted_array = []
    i = 0
    j = 0

    while i < len(left_array) and j < len(right_array):
      if left_array[i] < right_array[j]:
        sorted_array.append(left_array[i])
        i += 1
      else:
        sorted_array.append(right_array[j])
        j += 1

    # remaining elements
    sorted_array = sorted_array + left_array[i:]
    sorted_array = sorted_array + right_array[j:]

    return sorted_array
