# Problem 58: Length of Last Word
# https://leetcode.com/problems/length-of-last-word/description/

# Given a string s consisting of words and spaces, return the length 
# of the last word in the string.

# A word is a maximal substring consisting of non-space characters only.

# Example 1:
# Input: s = "Hello World"
# Output: 5
# Explanation: The last word is "World" with length 5.

# Example 2:
# Input: s = "   fly me   to   the moon  "
# Output: 4
# Explanation: The last word is "moon" with length 4.

# Example 3:
# Input: s = "luffy is still joyboy"
# Output: 6
# Explanation: The last word is "joyboy" with length 6.

##############################################################################

def length_of_last_word(s)
  reverse_string = s.reverse

  word_length = 0 
  in_word = false # memory to determine if we have reached the first word or not

  reverse_string.each_char do |char|
    if char != " "
      if !in_word # if in_word == false
        in_word = true
      end
      word_length += 1
    else char == " "
      if in_word # if in_word == true
        return word_length
      end
    end
  end

    return word_length
end

def test_length(s)
  puts "Input '#{s}' "
  results = length_of_last_word(s)
  puts "Output: #{results.inspect}"
  puts "" # Just for a clear separation in outputs
end

test_length("Hello World")                  # output: 5
test_length("   fly me   to   the moon  ")  # output: 4
test_length("luffy is still joyboy")        # output: 6
test_length("      ")                       # output: 0