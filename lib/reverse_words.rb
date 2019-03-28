require "pry"
# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_words(my_words)
  # check that my_words is not nil
  if my_words
    # initialize word boundaries
    word_start = 0
    word_end = 0

    # iterate through sentence
    index = 0
    while index < my_words.length
      # find word beginning
      if my_words[index] != " "
        word_start = index
        # continue to last char in word
        until my_words[index] == " " || index == my_words.length
          index += 1
        end
        word_end = index
        # reverse found word
        string_reverse(my_words, word_start, word_end)
      end
      # move to next char. if a word was found, this will be the char after the word
      index += 1
    end

    return my_words
  else
    return nil
  end
end

# modified version of string_reverse solution from last week's hw
def string_reverse(my_string, start_index, end_index)
  # binding.pry
  (((end_index + 1) - start_index) / 2).times do |i|
    temp = my_string[start_index + i]
    my_string[start_index + i] = my_string[end_index - (i + 1)]
    my_string[end_index - (i + 1)] = temp
  end
  return my_string
end
