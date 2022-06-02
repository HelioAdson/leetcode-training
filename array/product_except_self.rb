# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  final_array = []
  nums.each_with_index do |num, index|
    array = nums.clone
    array.delete_at(index)
    next final_array << 0 if array.include?(0)
    final_array << array.inject(:*)
  end
  final_array
end
