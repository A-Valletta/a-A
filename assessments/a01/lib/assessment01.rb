class Array
  def my_inject(accumulator = nil)

  end
end

def is_prime?(num)
  nums_factors = factors(num)
  return true if nums_factors.length == 2
  false
end

def factors(num)
  final = []
  (1..num).to_a.each { |number| final << number if num % number == 0 }
  final
end

def primes(count)
  final = []
  num = 1

  until final.length == count
    final << num if is_prime?(num)
    num += 1
  end

  final
end

# the "calls itself recursively" spec may say that there is no method
# named "and_call_original" if you are using an older version of
# rspec. You may ignore this failure.
# Also, be aware that the first factorial number is 0!, which is defined
# to equal 1. So the 2nd factorial is 1!, the 3rd factorial is 2!, etc.
def factorials_rec(num)
  return [1] if num == 1
  facs = factorials_rec(num - 1)
  facs << facs.last * (num - 1)
  facs
end

class Array
  def dups
    dups_hash = Hash.new { |h, k| h[k] = []}
    each_with_index do |num, idx|
      dups_hash[num] << idx
    end
    dups_hash.select {|k, v| v.length > 1}
  end
end

class String
  def symmetric_substrings
    all_substrings = []
    split_str = self.split('')

    split_str.each_index do |id_1|
      (id_1..split_str.length).to_a.each do |id_2|
        all_substrings << split_str[id_1..id_2].join('')
      end
    end
    p final = all_substrings.select { |string| string == string.reverse && string.length > 2}
    final.uniq
  end
end

class Array
  def merge_sort(&prc)
  end

  private
  def self.merge(left, right, &prc)
  end
end
