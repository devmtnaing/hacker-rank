#!/bin/ruby

n = gets.strip.to_i
s = gets.strip
k = gets.strip.to_i

encrypt_uppercase = -> (word, key) { (((word.ord - 65 + key) % 26) + 65).chr }
encrypt_lowercase = -> (word, key) { (((word.ord - 97 + key) % 26) + 97).chr }

puts s.chars.map { |x|
  if /[a-z]/.match(x)
    encrypt_lowercase.(x, k)
  elsif /[A-Z]/.match(x)
    encrypt_uppercase.(x, k)
  else
    x
  end
}.join