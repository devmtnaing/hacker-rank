def serial_average (str)
  serial_arr = str.split('-')
  average_number = (serial_arr[-2].to_f+serial_arr[-1].to_f) / 2
  return "#{serial_arr[0]}-#{average_number.to_s}0"
end
