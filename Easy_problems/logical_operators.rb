# and, &&
The operator and returns true if, and only if, both values also are true
So, only the expression true and true is also true. 
All of the expressions true and false, false and true, false and false evaluate to false.

# or, ||
The operator or on the other hand returns true if at least one of the values is true. 
So, only if both values are false, the operator returns false.

# not, !
The operator not simply returns the negated, opposite value. not true returns false, 
and not false returns true. Therefore, the following lines of code are the same:
> puts "Always true" if not false
> puts "Always true" unless false