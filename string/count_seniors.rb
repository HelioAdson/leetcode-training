# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  count = 0
  details.each do |detail|
      age = (detail[11] + detail[12]).to_i

      count += 1 if age > 60
  end
  count
end
