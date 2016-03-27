def full_name(first_name, *middle_names, last_name)
  print_middle_names = ->(names) { names.map { |name| name.to_s }.join(' ') }
  puts "#{first_name} #{print_middle_names.(middle_names)} #{last_name}"
end