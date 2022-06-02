# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  combine_numbers(1, n, k)
end

def combine_numbers(initial, n, k)
  res = []
  if k == 1
    for i in initial..n do
      res << [i]
    end
  else
    for i in initial..(n - k + 1)
      combine_numbers(i+1,n,k-1).each {|arr| res<<[i]+arr }
    end
  end
  res
end
