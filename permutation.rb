#Write a method to return all permutations of a string
require 'pry'


def permutation(string)
  return [string, string.reverse] if string.length == 2
  last = string[-1]
  array = []
  permutation(string.chop).each do |perm| 
    array << merge(last, perm)
  end
end

def merge(letter, string)
  array = []
  (0..string.length).each { |i| array << string.insert(i,letter)}
  return array
end