#!/bin/ruby

t = gets.strip.to_i

calculate_extra_chocolate =
  -> (total, required_wrapper) {
    extra = 0
    until total / required_wrapper == 0 do
      extra += total / required_wrapper
      total = (total/required_wrapper) + (total%required_wrapper)
    end
    return extra
  }

for a0 in (0..t-1)
    n,c,m = gets.strip.split(' ')
    n = n.to_i
    c = c.to_i
    m = m.to_i

    total = n / c
    puts total += calculate_extra_chocolate.(total, m)
end