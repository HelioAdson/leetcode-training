# @param {String} s
# @return {Integer}


# wrong solution
def length_of_longest_substring(s)
  max = current_max = 0
  table = { }

  #base case
  return 1 if s.length == 1

  s.chars.each_with_index do |i, index|
    if table[i]
      max = [current_max, max].max

      #updating with the length between same chars
      current_max = index.to_i - table[i].to_i
      substring = s[table[i].to_i+1..index.to_i].chars
      current_max = 1 if substring.detect {|x| substring.count(x) > 1}
    else
      current_max += 1
    end
    table[i] ||= index
  end
  [current_max, max].max
end

# It worked
def length_of_longest_substring(s)
  max = index = 0
  table = {}

  while index < s.length
    current_char = s[index]
    if table[current_char]
      # if a duplicate is found, update the index to that point
      index = table[current_char]
      table = {}
    else
      table[current_char] = index
      max = [max, table.length].max
    end
    index += 1
  end
  max
end
