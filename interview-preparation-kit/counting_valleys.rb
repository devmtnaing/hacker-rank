# path = D and U in any Order (eg. UDDDUDUU, DUUDDDUU)
def counting_valleys(path) 
    valley_count = 0
    current_level = 0
    steps = s.split('')
    in_valley = steps[0] == "D" ? true : false

    steps.each_with_index do |step, index|
        current_level += step == "U" ? 1 : -1
        next_step = steps[index+1]

        if current_level == 0 && in_valley
            valley_count += 1 
            in_valley = next_step == "D" ? true : false
        elsif current_level == 0 && next_step == "D"
            in_valley = true
        end
    end

    return valley_count
end