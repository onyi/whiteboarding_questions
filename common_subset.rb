def subsets(arr)
  return [[]] if arr.empty?
  last = arr.pop
  prev_sub = subsets(arr)
  prev_sub.map { |ele| ele + [last] }.concat(prev_sub)
end

def intersection(arr1, arr2)
  arr1 = arr1.sort
  arr2 = arr2.sort
  idx1, idx2 = 0,0
  i = []
  while(idx1 < arr1.length && idx2 < arr2.length)
    case(arr1[idx1] <=> arr2[idx2])
    when 0
      i << arr1[idx1]
      idx1 += 1
      idx2 += 1
    when 1
      idx2 += 1
    when -1
      idx1 += 1
    end
  end
  i
end

def common_subset(arr1, arr2)
  i = intersection(arr1, arr2)
  subsets(i)
end