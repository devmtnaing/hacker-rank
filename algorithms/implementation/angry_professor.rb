t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    a = gets.strip
    attendance_count = a.split(' ').map(&:to_i).select { |x| x <= 0 }.size
    puts attendance_count < k ? "YES" : "NO"
end