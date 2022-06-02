# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  hash_table = {}

  nums.each_with_index do |num, index|
    if hash_table[target - num]
      return [hash_table[target - num], index]
    end
    hash_table[num] ||= index
  end
end
