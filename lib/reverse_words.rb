# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return nil if my_words.nil?
  return my_words if my_words.length == 0 || my_words.length == 1

  index = 0
  while index < my_words.length
    j = index
    while my_words[j] != " " && my_words[j] != nil
      j += 1
    end

    # my_words[index..(j-1)]
    if j != index
      m = index
      n = j - 1
      while m < n
        temp = my_words[m]
        my_words[m] = my_words[n]
        my_words[n] = temp
        m += 1
        n -= 1
      end
    end

    index = j + 1
  end
end
