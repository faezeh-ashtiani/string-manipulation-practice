def partial_reverse(string, start_index, end_index)
  i = start_index
  j = end_index

  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j -= 1
  end
  return
end

def reverse_words(my_sentence)
  word_start = 0
  word_end = 0

  while word_end < my_sentence.length
    while my_sentence[word_end] != ' ' && word_end < my_sentence.length
      word_end += 1
    end

    partial_reverse(my_sentence, word_start, word_end - 1)

    word_start = word_end
    
    while my_sentence[word_end] == ' ' && word_end < my_sentence.length
      word_end += 1
      word_start += 1
    end
  end
end


# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil? || my_sentence.length == 0

  partial_reverse(my_sentence, 0, my_sentence.length - 1)

  reverse_words(my_sentence)
end
