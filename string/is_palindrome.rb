# @param {String} s
# @return {Boolean}

# ruby easy way
def is_palindrome(s)
  s.gsub(/[^a-zA-Z0-9]/, '').downcase == s.gsub(/[^a-zA-Z0-9]/, '').downcase.reverse
end

# two pointers
def is_palindrome(s)
  string = s.gsub(/[^a-zA-Z0-9]/, '').downcase

  #base case
  return true if string.length == 0

  start_pointer = 0
  end_pointer = string.length - 1

  while (start_pointer < end_pointer)
    if string[start_pointer] == string[end_pointer]
      start_pointer += 1
      end_pointer -= 1
    else
      return false
    end
  end
  true
end
