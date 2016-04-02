# normal way of my solution
t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    height = 0
    (0..n).each do |i|
        if ( i % 2 == 0 )
            height += 1
        else
            height = height * 2
        end
    end
    puts height
end

# cooler way with using recurion and math approach (from someoe else)
def recur(x,i)
    return x if i == 0
    x = 2*x +1
    recur(x,i-1)
end

t = gets.strip.to_i

arr =[]

t.times do
    arr << gets.chomp.to_i
end

arr.each do |v|
    if v == 0
        puts 1
        next
    end

    div = v/2 ; mod = v%2
    r = recur(1,div)
    puts (mod == 0 ? r : 2*r )
end
