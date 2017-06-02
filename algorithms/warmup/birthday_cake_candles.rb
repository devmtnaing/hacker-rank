#!/bin/ruby

n = gets.strip.to_i
height = gets.strip
height = height.split(' ').map(&:to_i)

print height.count(height.sort.max)
