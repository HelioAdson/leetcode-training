# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.

# O(n^2) solution
def merge(nums1, m, nums2, n)
  nums1_sliced = nums1[0..m - 1]

  #base case
  if n == 0
    return nums1.replace(nums1_sliced)
  elsif m == 0
    return nums1.replace(nums2)
  end
  result = nums1_sliced + nums2
  # ruby sort! uses quicksort, so it's a O(n2).
  nums1.replace(result.sort)
end

# O(m + n) solution
def merge(nums1, m, nums2, n)
  nums1_insert_index = m + n - 1
  m, n = m - 1, n - 1

  while (n >= 0 || m >= 0)
    current_num1 = m >=0 ? nums1[m] : -100000000000000
    current_num2 = n >=0 ? nums2[n] : -100000000000000
    nums1[nums1_insert_index] = [current_num1, current_num2].max
    m -= 1 if (current_num1 >= current_num2)
    n -= 1 if (current_num2 > current_num1)
    nums1_insert_index -= 1
  end
end
