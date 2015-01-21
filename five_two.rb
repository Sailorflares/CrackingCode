#Given a (decimal - e.g. 3.72) number that is passed in as a string, print the binary representation.
#If the number can not be represented accurately in binary, print “ERROR”
require 'pry'

def toBinary(integer)
  return unless integer
  integer = integer.to_i
  binary = ''
  log = Math.log2(integer).floor
  (log).times { binary << '0'}
  binary << "1"
  integer -= 2**log
  while integer > 0
    log = Math.log2(integer).floor
    binary[log] = "1"
    integer -= 2**log
  end
  return binary.reverse
end

def toInteger(binary_string)
  array = binary_string.reverse.split("")
  number = 0
  array.each_index {number += 2**i if array[i].to_i == 1} 
  return number
end