def mask_article(str, arr)
  if str.include? arr.first
    str.gsub("\\b#{arr.first}\\b", strike(arr.first))
  else
    str
  end
end

def strike(str)
  str[0,0] = "<strike>"
  str[str.size,0] = "</strike>"
  return str
end