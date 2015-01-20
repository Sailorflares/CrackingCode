def removeDuplicates(string)
  return unless string
  current = string[0]
  for i in (0...string.length)
    j = i + 1
    while j < string.length
      if current == string[j]
        string.slice!(j)
      else
        j += 1
      end
    end
    current = string[i+1]
  end
  return string
end