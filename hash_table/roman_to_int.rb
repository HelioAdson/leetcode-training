# @param {String} s
# @return {Integer}

#O(n) time complexity
def roman_to_int(s)
  roman_table = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }

  total = 0
  i = 0
  while i < s.length
    if (i + 1 < s.length) && roman_table[s[i]] < roman_table[s[i + 1]]
      total += roman_table[s[i + 1]] - roman_table[s[i]]
      i += 1
    else
      total += roman_table[s[i]]
    end
    i += 1
  end
  total
end
