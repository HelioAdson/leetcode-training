# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  res = []
  generate(res, '', n, 0, 0)
  res
end

def generate(res, str, n, initial_p, final_p)
  res << str if final_p == n

  generate(res, "#{str})", n, initial_p, final_p + 1) if final_p < initial_p
  generate(res, "#{str}(", n, initial_p + 1, final_p) if initial_p < n
end
