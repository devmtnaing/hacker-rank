# ntuc lane 14

#!/bin/ruby
n = gets.strip.to_i
arr = gets.strip
result = arr.split(' ').map(&:to_i).inject(:+)
puts result

