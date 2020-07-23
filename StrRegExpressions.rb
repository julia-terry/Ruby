# Strings and Regular Expressions

#prints out Hello, parameter inputted
def hello(name)
  # YOUR CODE HERE
  s = "Hello, " + name
  return s
end

#sees if the parameter inputted starts with a consonant (boolean return)
def starts_with_consonant? s
  a = s.downcase
  if a[0,1] == 'a' || a[0,1] == 'e' || a[0,1] == 'i' || a[0,1] == 'o' || a[0,1] == 'u' 
    return false
  else 
    return true
  end
end

#see if parameter inputted is of binary numbers (0 and 1)
#found help for line 23 at https://stackoverflow.com/questions/32536143/check-if-string-has-only-0-and-1
def binary s
  if s.chars.all? {|x| x =~ /[01]/} == false
    return false
  end
  
  if s.chars.last(2).join == '00' || s == '0'
    return true
  else
    return false
  end
end
