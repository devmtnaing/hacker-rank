def solution(n)
  init_arr = 1.upto(n).to_a
  found_square_root = -> (num) { return false if num == 1; init_arr.map { |n| n*n == num }.include? true }
  (1..n).map { |i| init_arr[i-1] = found_square_root.(i) ? -1 : i }
end

def solution(n)
  find_sqrt =
    -> (target) do
      find = -> (start) do
        if ( start**2 == target )
          return start
        elsif ( start**2 > target )
          return nil
        else
          return find.(start+1)
        end
        find.(1)
      end
    end

  find_sqrt.(n)
end

  find_sqrt =
    -> (target) do
      find = -> (start) do
        if ( start**2 == target )
          return start
        elsif ( start**2 > target )
          return nil
        else
          return find.(start+1)
        end
        find.(1)
      end
    end