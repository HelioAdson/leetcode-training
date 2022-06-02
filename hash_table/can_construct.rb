# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}

#hash table
def can_construct(ransom_note, magazine)
  hash_table = {}

  for i in magazine.chars do
    if hash_table[i]
      hash_table[i] = hash_table[i] + 1
    else
      hash_table[i] ||= 1
    end
  end

  for i in ransom_note.chars do
    char_count = ransom_note.count(i)
    return false if hash_table[i].nil? || hash_table[i] < char_count
  end
  true
end

# O(n)
def can_construct(ransom_note, magazine)
  return true if ransom_note.empty?

  for i in ransom_note.chars do
    return false if ransom_note.count(i) > magazine.count(i)
  end
  true
end
