require 'byebug'

def subsets(arr)
  debugger
  return [[]] if arr.empty?
  subs = subsets(arr.take(-1))
  subs.concat(subs.map { |sub| sub + [subs.last] })
end
