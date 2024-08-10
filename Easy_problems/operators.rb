# a += b
# shorthand for a = a + b
> a = 1
> a += 1
a = 2


# a ||= b
# asks if a is defined (not nil or false), and if not, evaluated b and saves it to a
@current_user ||= User.find_by_id(session[:user_id])
# this will either find that @current_user is defined, or if not, it will define
# it and then save it as @ current_user

# Matching operator =~ and Not Matching !~
It allows you to do a quick index search using a regular expression.
This looks for numbers & returns the index inside the string where the 
first match is found, otherwise it returns nil.
> "3oranges" =~ /[0-9]/
Output: 0
# Not matching. You’ll get true or false with this, no indexes, so keep that in mind.
> "abc" !~ /[0-9]/
Output: false

# and, &&
The operator and returns true if, and only if, both values also are true
So, only the expression true and true is also true. 
All of the expressions true and false, false and true, false and false evaluate to false.

# or, ||
The operator or on the other hand returns true if at least one of the values is true. 
So, only if both values are false, the operator returns false.

# not, !, unless
The operator not simply returns the negated, opposite value. not true returns false, 
and not false returns true. Therefore, the following lines of code are the same:
> puts "Always true" if not false
> puts "Always true" unless false
# You can check if a condition is "not true" with if or unless
> if !condition
> unless condition

# elsif
Elsif is a second if statement to check, and if neither the first "if" or "elsif" are true
then use the else statement
if stock < 1
  puts "Sorry we are out of stock!"
elsif stock == 10
  puts "You get a special discount!"
else
  puts "Thanks for your order!"
end

# Terary operator: Else shorthand 
If you have an if else expression there is also a shorthand for that.
if 40 > 100
  "Greater than"
else
  "Less than"
end
# The above statement can be written like this:
> 40 > 100 ? "Greater than" : "Less than"
condition ? true : false
"If 40 is greater than 100, return 'Greater than'; otherwise, return 'Less than'"
Output: "less than"

# Compound conditions
> if name == "David" && country == "UK" #if name is david and from the UK
>if age == 10 || age == 20 # if age is 10 or 20

# Comparing strings
They must be exactly the same or they won''t compare properly
> name  = "David"
> expected_name = "david"
> if expected_name.downcase == name.downcase
>  puts "Name is correct!"
> end

# === Operator Known as the "case equality" or "threequals" operator.
Behavior: Varies depending on the class of the object, making it versatile for different types of equality checks.
# Range: Checks if a value is within a range.
> (1..10) === 5     # true
> (1..10) === 15    # false
> ('a'..'z') === 'c' # true
# Class/Module: Checks if an object is an instance of a class or module.
> String === "hello"    # true
> Numeric === 42        # true
> Array === []          # true
> Integer === 42        # true
# Regexp: Checks if a string matches a regular expression.
> /[a-z]/ === "hello"   # true
> /\d+/ === "1234"      # true
> /\d+/ === "abcd"      # false
# Proc/Lambda: Calls the proc or lambda with the argument and returns the result.
> proc = ->(x) { x > 10 }
> proc === 15    # true
> proc === 5     # false
# Ruby convertss "when" cases to ===
# example "when 1..10" is equivalent to "1..10 === 5.""
case 5
when 1..10
  puts "In range 1 to 10"
else
  puts "Out of range"
end

# Safe operator &.
You may want to call a method on an object, but this object may be nil, which is no good 
because calling a method on nil often results in an error.
> if user && user.active
# This &. is the safe navigator operator which only calls the active method on user if it's not nil.
> if user&.active

