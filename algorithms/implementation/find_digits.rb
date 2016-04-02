#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    evenly_divisible = 0
    n.to_s.chars.map(&:to_i).each do |x|
      next if x == 0
      evenly_divisible += 1 if (n % x == 0)
    end
    puts evenly_divisible
end