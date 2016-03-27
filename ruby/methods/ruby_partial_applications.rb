combination = -> (n) do
    -> (r) do
        Array.new(n).combination(r).count
    end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
