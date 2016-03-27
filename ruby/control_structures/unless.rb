def scoring(array)
  array.each do |a|
    a.update_score unless a.is_admin?
  end
end

