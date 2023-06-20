# @param {String} s
# @param {String} t
# @return {Boolean}

#Time Limit Exceeded
def is_isomorphic(s, t)
  hash_table = {}
  s.chars.each_with_index do |x, index|
    return false if hash_table.key?(x) && hash_table[x] != t[index]
    return false if hash_table.select{|k, v| k != x && v == t[index]}.any?
    hash_table[x] = t[index]
  end
  true
end

# did it
def is_isomorphic(s, t)
  s_table = {}
  t_table = {}

  s.each_char.with_index do |char, index|
    s_table[t[index]] ||= char
    t_table[char] ||= t[index]

    if s_table[t[index]] != char || t_table[char] != t[index]
      return false
    end
  end
  true
end
