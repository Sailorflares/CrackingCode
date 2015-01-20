require 'pry'
def fibonacci(max=Float::INFINITY)
  return to_enum(__method__, max) unless block_given?
  yield previous = 0
  binding.pry
  while (i ||= 1) < max
    yield i
    i, previous = previous + i, i
  end
  previous
end