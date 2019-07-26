# Given arr1 and arr2, find the intersection of both sets. It should be trivial to write an O(n**2) solution. 
#Use sorting to solve in O(nlog(n)). Next, improve this to O(n) time (maybe use a non-array datastructure).


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