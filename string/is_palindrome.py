class Solution(object):
  def isPalindrome(self, s):
    s = s.lower()
    if len(s) == 0:
      return True

    i = 0
    j = len(s) - 1

    while (i < j):
      if not s[i].isalnum():
        i += 1
      elif not s[j].isalnum():
        j -= 1
      elif s[i] == s[j]:
        i += 1
        j -= 1
      else:
        return False
    return True
