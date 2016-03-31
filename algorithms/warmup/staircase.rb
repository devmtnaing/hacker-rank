#!/bin/ruby

n = gets.strip.to_i

1.upto(n) do |i|
  (n - i).times { print(' ') }
  i.times { print('#') }
  print("\n")
end