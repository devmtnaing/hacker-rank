#!/bin/ruby

arr = gets.strip
arr = arr.split(' ').map(&:to_i)

mini_sum = arr.sort[0...4].inject(:+)
max_sum = arr.sort[1...5].inject(:+)

print [mini_sum, max_sum].join(' ')