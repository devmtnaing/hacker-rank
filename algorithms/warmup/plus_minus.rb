#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

positive_count = 0
negative_count = 0
zero_count = 0
arr.each do |i|
  positive_count += 1 if i > 0
  negative_count += 1 if i < 0
  zero_count += 1 if i.zero?
end

puts (positive_count / n.to_f).round(6)
puts (negative_count / n.to_f).round(6)
puts (zero_count / n.to_f).round(6)