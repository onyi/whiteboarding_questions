# Write a function that will take a string and return the indices of the start/end of the longest palindrome it contains.
def longest_p(str)
  s = 0
  e = 0
  (0..str.length - 1).each do |idx1|
    (idx1 + 1..str.length).each do |idx2|
      if is_palindrome?(idx1, idx2, str) && (idx2 - idx1) > (e-s)
        e = idx2
        s = idx1
      end
    end
  end
  return [s, e]
end


def is_palindrome?(s, e, str)
  (e-s).times do |i|
    if str[s+i] != str[e-i]
      return false
    end
  end
  return true


end
