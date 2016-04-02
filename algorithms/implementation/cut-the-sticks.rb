#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

puts n
while arr.length > 1
  arr = arr.map { |x| x - arr.min }.delete_if { |x| x == 0 }
  puts arr.length unless arr.length == 0
end


# recursive wayy
def stick_cut(arr)
  if !arr.empty?
    puts arr.length
    arr = arr.map { |x| x - arr.min }.delete_if { |x| x == 0 }
  end

end