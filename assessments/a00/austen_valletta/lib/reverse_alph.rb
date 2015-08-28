

def reverse_alph(str)
  a = ['a', 'b', 'c']
  b = ['z', 'y', 'x']
  switch = a.zip(b)
 spliter = str.split('')
 final = []
 spliter.each do |letter|
   if a.include?(letter)
     idx = a.index(letter)
     final << switch[idx][1]
   else  
     idx = b.index(letter)
     final << switch[idx][0]
   end  
 end 
 final.join('')
end

p reverse_alph('abba')