# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  hash_table = {}
  s_array = s.split(' ')

  return false if pattern.length != s_array.length

  s_array.each_with_index do |word, index|
    puts hash_table
    if hash_table[pattern[index]]
      return false if hash_table[pattern[index]] != word
    else
      return false if hash_table.has_value?(word)
      hash_table[pattern[index]] = word
    end
  end
  true
end
