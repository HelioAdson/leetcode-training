# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  final_array = {}
  cpdomains.each do |string|
    visits = string.split.first.to_i
    domain = string.split.last
    subdomains = domain.split('.')
    while !subdomains.empty?
      str = subdomains.join(?.)
      final_array[str] ||= 0
      final_array[str] += visits
      subdomains.shift
    end
  end
  final_array.to_a.map{|x| "#{x[1]} #{x[0]}"}
end
