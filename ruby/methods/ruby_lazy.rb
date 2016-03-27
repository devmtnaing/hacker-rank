require 'prime'
number = gets.to_i
prime_numbers = -> (number) { Prime.each(Float::INFINITY).lazy.map { |x| x }.first(number) }
puts prime_numbers.(number)