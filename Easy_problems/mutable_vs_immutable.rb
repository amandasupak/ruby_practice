# :name A symbol, used as an immutable identifier, often as a hash key or method name.
attr_reader :title
:rubyguides.object_id

# name: A keyword argument, used in method definitions. Allows you to pass arguments to a method using key-value pairs.
def create_person(name:, age:)
  puts "Name: #{name}, Age: #{age}"
end

create_person(name: "Alice", age: 30)

# You should use symbols as names or labels for things (like methods) 
# and use strings when you care more about the data (individual characters).

--------------

Mutable Identifiers
Definition: Mutable identifiers are variables whose values can be changed after they are created.
Example in Ruby: Strings are a common example of mutable objects.
Usage: When you need to modify the value of a variable over time, mutable objects are useful.

str = "hello"
str << " world"
puts str  # Output: "hello world"

Immutable Identifiers
Definition: Immutable identifiers are variables whose values cannot be changed once they are created.
Example in Ruby: Symbols and numbers are common examples of immutable objects.
Usage: When you need a constant value that should not be modified, immutable objects are ideal. 
They help prevent bugs caused by unintended changes to data.

To be clear :name cannot be changed or assigned, but the value that :name holds can be changed

person = { name: "Alice", age: 30 }
puts person[:name]  # Output: Alice
first_name: = name: # this would give a syntax error
person[:name] = "Bob"
puts person[:name]  # Output: Bob


:symbol is for passing into methods like model :name
keyword_arguments: can call in any order


#################

Symbols in Ruby are immutable for several reasons:

Memory Efficiency:
Each symbol is stored in memory only once. If you use the same symbol multiple times, Ruby 
references the same object in memory, rather than creating a new object each time. This is 
different from strings, where each use creates a new object.

:symbol.object_id == :symbol.object_id  # true
"string".object_id == "string".object_id  # false


Performance:

Because symbols are immutable and unique, comparisons between symbols are faster than between strings. 
This is because Ruby can simply compare the object IDs rather than the content of the objects

:symbol == :symbol  # true, fast comparison
"string" == "string"  # true, slower comparison as it checks content
