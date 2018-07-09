#write your code here
def echo(str)
  p str
end

def shout(str)
  p str.upcase
end

def repeat(str, n = 2)
  str2 = (str + " ") * (n-1) + str
  p str2
end

def start_of_word(str, n)
  tmp = ""
  i = 0
  while i < n do
    tmp = tmp + str[i]
    i += 1
  end
  p tmp
end

def first_word(str)
  string = str.split()
  p string[0]
end

def titleize(str)
  string = str.split()
  string.each { |mot|
    if mot == string[0]
      mot.capitalize!
    elsif mot == "and" || mot == "the"
      mot = mot
    else
      mot.capitalize!
   end
   }
  str2 = string.join(" ")
  p str2
end