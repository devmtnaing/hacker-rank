#!/bin/ruby

s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apples = gets.strip
apples = apples.split(' ').map(&:to_i)
oranges = gets.strip
oranges = oranges.split(' ').map(&:to_i)

fallen_apples = 0
apples.each do |apple|
  fallen_apples += 1 if (a+apple).between?(s, t)
end

fallen_oranges = 0
oranges.each do |orange|
  fallen_oranges += 1 if (b+orange).between?(s, t)
end

print "#{fallen_apples}\n#{fallen_oranges}"
