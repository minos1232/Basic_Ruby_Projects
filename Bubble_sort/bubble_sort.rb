def bubble_sort(array)  
  for i in 0...array.length-1 #for iterations
    for j in 0...array.length-1 #for index iteration within one iteration
      array[j], array[j+1] = array[j+1],array[j] if array[j] > array[j+1] 
    end
  end
  puts array.inspect
end

bubble_sort([4,3,78,2,0,2])