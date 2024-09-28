def caesar_cipher(string,shift_factor)
  lower_alphabet= ('a'..'z').to_a
  upper_alphabet= ('A'..'Z').to_a
  arr =string.split('') 
  newarr =[]
  arr.each_with_index do |value,index|
    if lower_alphabet.include?(value)
      lower_alphabet_index = lower_alphabet.index(value)
      new_value = lower_alphabet[(lower_alphabet_index + shift_factor) % lower_alphabet.length] #to ensure shifting  past z back to a
      newarr << new_value
    elsif  upper_alphabet.include?(value)
      upper_alphabet_index =upper_alphabet.index(value)
      new_value = upper_alphabet[(upper_alphabet_index + shift_factor) % upper_alphabet.length]
      newarr << new_value
    else
      newarr << value #for spaces, ponctuation...
    end
  end
  newarr = newarr.join #convert the array into a string again
  puts newarr
end

caesar_cipher("What a string!", 5)
