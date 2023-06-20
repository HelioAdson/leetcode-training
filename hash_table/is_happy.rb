# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  hash_table = {}

  while n!= 1 do
    return false if hash_table.include?(n)
    hash_table << n
    n = n.to_s.chars.map{|x| x.to_i ** 2}.sum
  end
  true
end
