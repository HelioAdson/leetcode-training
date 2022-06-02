# @param {String} s
# @param {String} t
# @return {Boolean}

# ruby easy way, O(s2 + t2)
def is_anagram(s, t)
  return true if s.chars.sort.join == t.chars.sort.join
  false
end

# better way, O(s + t)
def is_anagram(s, t)

  #base case
  return false if t.length < s.length

  s_index = s.length - 1
  t_index = t.length - 1

  s_char_count = {}
  t_char_count = {}

  while (s_index >= 0 || t_index >= 0)
    s_char_count[s[s_index]] ||= 0
    s_char_count[s[s_index]] += 1

    t_char_count[t[t_index]] ||= 0
    t_char_count[t[t_index]] += 1

    s_index -= 1
    t_index -= 1
  end
  s_char_count == t_char_count
end
