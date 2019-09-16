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
# Time complexity: O(n) where n is the number of characters in my_sentence
# - O(n) time to reverse all characters in the sentence. ("Let's go" becomes "og s'teL")
# - O(2n) time to reverse words in the sentence. ("og s'teL" becomes "go Let's")
# - Overall, O(3n) or simplified to O(n)
# Space complexity: O(1) - auxiliary storage used does not depend on input
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil? || my_sentence.length == 0

  partial_reverse(my_sentence, 0, my_sentence.length - 1)

  reverse_words(my_sentence)
end
