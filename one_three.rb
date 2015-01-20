def removeDuplicates(string)
  return if string == nil
  for i in (0...string.length)
    current = string[i]
    j = i + 1
    while j < string.length
      if current == string[j]
        string.slice!(j)
      else
        j = j + 1
      end
    end
    current = string[i+1]
  end
  return string
end