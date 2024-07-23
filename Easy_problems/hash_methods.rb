# Make an empty hash
hash = {}

# Build a non-empty hash
hash =  { 'I' => 1,
          'V' => 5,
          'X' => 10,
          'L' => 50,
          'C' => 100 }

# saving a key/value pair
hash[key] = value
return hash[key] # will return value

# Search for a key or value, returns true/false
hash.key?(search_term)
hash.value?(search_term)

# Map: transform data in arrays, hashes and ranges
# Map - Convert hash values to symbols
> hash = { bacon: "protein", apple: "fruit" }
> hash.map { |k,v| [k, v.to_sym] }.to_h
Output: {:bacon=>:protein, :apple=>:fruit}



