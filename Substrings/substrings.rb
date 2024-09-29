def substrings(string, dict)
  substrings = {}
dict.each do |word|
  if string.include?(word)
    if substrings.key?(word)
      substrings[word] +=1
    else substrings[word]= 1
    end
  end
end 
puts substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)