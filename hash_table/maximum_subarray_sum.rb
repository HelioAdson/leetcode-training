# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximum_subarray_sum(nums, k)
  hash_table = {}
  max = nil

  prefix_sums = [0]
  nums.each_with_index do |num, index|
    prefix_sums << prefix_sums.last + num
  end

  nums.each_with_index do |num, index|
    guesses = [hash_table[num + k], hash_table[num - k]].compact.flatten

    guesses.each do |guess|
      # prefix sum of current index minus the guess prefix sum (start of subarray)
      new_max = prefix_sums[index + 1] - guess
      max = new_max if max.nil? || new_max > max
    end

    if hash_table[num]
      # only store the smallest index prefix sum, as we will decrease it later
      hash_table[num] = [prefix_sums[index], hash_table[num]].min
    else
      hash_table[num] = prefix_sums[index]
    end
  end
  max || 0
end
