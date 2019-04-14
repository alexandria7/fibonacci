# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) or linear where n is the size of n 
# Space complexity: O(1) 
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError, "That is not a valid value for n"
  else 
    return 0 if n == 0
    return 1 if n == 1

    i = 1
    fibonacci_num = 1
    previous_fibonacci_num = 0

    while i < n
      temp = fibonacci_num
      fibonacci_num += previous_fibonacci_num
      previous_fibonacci_num = temp 

      i += 1
    end 

    return fibonacci_num
  end 
end
