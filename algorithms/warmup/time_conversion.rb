#!/bin/ruby

time = gets.strip

hour = time.slice!(0, 2)
period = time.slice!(-2, 2)
hour = '00' if hour == '12'

if period.downcase == 'am'
    hour = hour
else
    hour = (hour.to_i + 12).to_s
end

puts "#{hour}#{time}"