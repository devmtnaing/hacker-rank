#!/bin/ruby

def solve(grades, pass_grade, multiple_roundup, difference_constraint)
  final_grades = []
  grades.each do |g|
    if g < pass_grade || g % multiple_roundup < difference_constraint
      final_grades.push(g)
    else
      # more calculation just to work with any multiple_roundup and constraints
      final_grades.push( ((g/multiple_roundup) * multiple_roundup) + multiple_roundup )
    end
  end
  return final_grades
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
    grades[grades_i] = gets.strip.to_i
end

result = solve(grades, 38, 5, 3)
print result.join("\n")