# Problem 20:
# https://leetcode.com/problems/valid-parentheses/description/
# Given a string s containing just the characters 
# '(', ')', '{', '}', '[' and ']', 
# determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.



def is_valid(str)
  stack = []
  matching_bracket = { '(' => ')', '[' => ']', '{' => '}' }

  str.each_char do |char|
    if matching_bracket.keys.include?(char) #if there is an open bracket
      stack.push(char)
    elsif matching_bracket.values.include?(char) #if there is a close bracket

      #return false if either of these are true
      ### if the stack is empty then there is no open bracket before it
      if stack.empty? || matching_bracket[stack.pop] != char 
        return false
      end
    end
  end
  
  stack.empty?
end

def test_is_valid(str)
puts "Input: #{str}"
results = is_valid(str)
puts "#{results.inspect}"
puts "" # Just for a clear separation in outputs
end


test_is_valid("(){}[]")   # output: true
test_is_valid("({})")     # output: true
test_is_valid("(apple)")  # output: true
test_is_valid("(]")       # output: false
test_is_valid("()}")      # output: false
test_is_valid("({])")     # output: false
