def fi(arr1, arr2)
  arr2.sort()
  i = []
  arr1.each do |ele|
    i << ele if arr2.bsearch do |x| 
      x == ele
    end
  end
  i
end 