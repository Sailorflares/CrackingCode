#Write a method to replace all spaces in a string with ‘%20’.

def replaceSpaces(string)
  return if string == nil
  i = 0
  while i < string.length
    if string[i] == " "
      string[i] = "%20"
      i = i + 3
    else
      i = i + 1
    end
  end
  string
end