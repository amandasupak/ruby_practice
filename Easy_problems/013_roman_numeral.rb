# Problem 13:
# https://leetcode.com/problems/roman-to-integer/solutions/
# Roman numerals are represented by seven different symbols: 
# I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000

# For example, 2 is written as II in Roman numeral, just two ones added 
# together. 12 is written as XII, which is simply X + II. The number 27 
#is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. 
# However, the numeral for four is not IIII. Instead, the number four is 
# written as IV. Because the one is before the five we subtract it making four. 
# The same principle applies to the number nine, which is written as IX. 
# There are six instances where subtraction is used:

# I can be placed before V (5) and X (10) to make 4 and 9. 
# X can be placed before L (50) and C (100) to make 40 and 90. 
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.

# Convert Roman Numerals to Normal Integers
def roman_to_int(x)
    hash =  {   'I' => 1,
                'V' => 5,
                'X' => 10,
                'L' => 50,
                'C' => 100,
                'D' => 500,
                'M' => 1000 }

    total_value = 0
    previous_value = 0 
    x.each_char do |char|
        current_value = hash[char]

        unless current_value
            puts "Warning: '#{char}' is not a valid Roman numeral."
            next
        end

        if current_value <= previous_value
            total_value += current_value || 0 # add 0 if invalid letter used
        elsif current_value > previous_value
            # If the current value is larger than the previous value like for "IV"
            # We already added previous value on the last loop, so we subtract
            # it once to remove the intial one, and then again beacuse we need
            # one less than the current value (like how IV is 4) and then add
            # the current value
            total_value += current_value - (previous_value * 2) || 0
        end
        previous_value = current_value
    end
    return total_value
end


def test_roman(x)
    puts "Roman numeral: #{x}"
    result = roman_to_int(x)
    puts "Converts to: #{result.inspect}"
    puts ""  # Just for a clear separation in output
end


test_roman("III")       # 3
test_roman("IV")        # 4
test_roman("LVIII")     # 58
test_roman("MCMXCIV")   # 1994
test_roman(" ")         # error testing
test_roman("ABAB")      # error testing

