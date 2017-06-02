#!/bin/ruby

def solve(a0, a1, a2, b0, b1, b2)
  rA = (a0 > b0 ? 1 : 0) + (a1 > b1 ? 1 : 0) + (a2 > b2 ? 1 : 0)
  rB = (b0 > a0 ? 1 : 0) + (b1 > a1 ? 1 : 0) + (b2 > a2 ? 1 : 0)
  [rA.to_s, rB.to_s]
end

a0, a1, a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0, b1, b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i
result = solve(a0, a1, a2, b0, b1, b2)
print result.join(" ")


