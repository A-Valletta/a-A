# We're going to implement a cipher called the Folding Cipher. Why? Because it
# folds the alphabet in half and uses the adjacent letter.
#
# For example,
# a <=> z
# b <=> y
# c <=> x
# ...
# m <=> n
#
# Hint: Think about zipping some things together.

def folding_cipher(str)
  alph_reverse = {
    'a' => 'z',
    'b' => 'y',
    'c' => 'x',
    'd' => 'w',
    'e' => 'v',
    'f' => 'u',
    'g' => 't',
    'h' => 's',
    'i' => 'r',
    'j' => 'q',
    'k' => 'p',
    'l' => 'o',
    'm' => 'n',
    'n' => 'm',
    'o' => 'l',
    'p' => 'k',
    'q' => 'j',
    'r' => 'i',
    's' => 'h',
    't' => 'g',
    'u' => 'f',
    'v' => 'e',
    'w' => 'd',
    'x' => 'c',
    'y' => 'b',
    'z' => 'a'
  }

  final = ''

  str.split('').each { |letter| final << alph_reverse[letter]}

  final
end

# Write a method that returns the factors of a number
def factors(num)
  final = []

  (1..num).each { |in_question| final << in_question if num % in_question == 0}

  final
end

# Jumble sort will take a string and return a string with the letters ordered
# according to the order of an alphabet array that will be handed to the method.
# If no alphabet array is provided, it should default to alphabetical order.

def jumble_sort(str, alphabet = nil)


  initial = str.split('')
  final_id = []
  final = []

  return initial.sort.join('') if alphabet == nil

  # alphabet.each { |letter| final << letter if initial.include?(letter) }

  # final.join('')

  initial.each { |let| final_id << alphabet.index(let)}
  final_id.sort.each { |id| final << alphabet[id] }

  final.join('')


end

class Array
  # Write an array method that returns `true` if the array has duplicated
  # values and `false` if it does not
  def dups
    self.each_with_index do |num, id_1|
      ((id_1 + 1)..self.length).to_a.each do |id_2|
        return true if self[id_1] == self[id_2]
      end
    end

    false
  end
end

# Determine if a string is symmetrical. 'racecar' and
# 'too hot to hoot' are examples of symmetrical strings.
# You are NOT permitted to use Array#reverse,
# Array#reverse!, String#reverse, or String#reverse!
class String
  def symmetrical?
    initial = self.split('')
    initial.delete_if { |letter| letter == ' '}

    final = []

    initial.length.times do
      final << initial.pop
    end

    if self == final.join('')
      return true
    else
      return false
    end

  end
end

'too hot to hoot'.symmetrical?