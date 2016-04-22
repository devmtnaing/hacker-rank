n = gets.strip.to_i
a = Array.new(n)

get_primary_diagonal =
  -> (arr) {
  (0..(arr.size-1)).each_with_object([]) do |x, element|
    element << arr[x][x]
  end
  }

get_secondary_diagonal =
  -> (arr) {
  (0..(arr.size-1)).each_with_object([]) do |x, element|
    element << arr[x][(arr.size-1) - x]
  end
  }

get_diagonal_difference =
  -> (arr) {
    (get_primary_diagonal.(arr).inject(:+) - get_secondary_diagonal.(arr).inject(:+)).abs
  }

for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

puts get_diagonal_difference.(a)