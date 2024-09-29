def substrings(string, dict)
  substrings = {}
  arr = string.split(' ')
dict.each do |word|
  arr.each do |value|
    if value.downcase.include?(word.downcase)
      if substrings.key?(word)
        substrings[word] +=1
      else substrings[word]= 1
      end
    end
  end 
end 
puts substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)