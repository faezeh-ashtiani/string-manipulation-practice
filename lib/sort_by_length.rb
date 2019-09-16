def swap(index_a, index_b, list)
  temp = list[index_a]
  list[index_a] = list[index_b]
  list[index_b] = temp
end

def sort(list)
  i = 0
  while i < list.length - 1
    j = i + 1
    while j < list.length - i
      if (list[j - 1].length > list[j].length)
        swap(j - 1, j, list)
      end
      j += 1
    end
    i += 1
  end

  return list
end


# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  words = my_sentence.split(/\s/)

  return sort(words)
end
