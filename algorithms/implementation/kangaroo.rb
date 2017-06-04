#!/bin/ruby

x1,v1,x2,v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i

def same_location?(x1, v1, x2, v2)
  return false if (x1 > x2 && v1 >= v2) || (x2 > x1 && v2 >= v1)
  return true if x1 == x2
  same_location?(x1+v1, v1, x2+v2, v2)
end

print same_location?(x1, v1, x2, v2) ? 'YES' : 'NO'
