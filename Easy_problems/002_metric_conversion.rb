# This is my own made up problem
# Problem 002: Metric Conversion

# With an input of a number, the unit it's in, and the unit you want to convert to
# Convert between grams (g), miligrams (mg), and micrograms (mcg)

# Example 1:
# Input: [30,mcg,mg] aka convert 30 mcg to mg
# Output: 0.03

# Example 2:
# Input: [0.1,g,mg] aka convert 0.1 g to mg
# Output: 100


##############################################################################
require 'bigdecimal'

def metric_conversion(amount,from_unit, to_unit)
  conversion_factors = {
    g: 1,
    mg: 1000,
    mcg: 1_000_000
  }

  amount = BigDecimal(amount.to_s)

  if conversion_factors[from_unit] && conversion_factors[to_unit]
    # Step 1: Convert the amount from the input unit to grams
    amount_in_grams = amount / conversion_factors[from_unit].to_f
    # Step 2: Convert the amount in grams to the target unit
    new_amount = amount_in_grams * conversion_factors[to_unit]
  else
    raise ArgumentError, "Invalid Units"
  end
end

def test_metric(amount, from_unit, to_unit)
  puts "Convert #{amount} #{from_unit} to #{to_unit}"
  results = metric_conversion(amount,from_unit, to_unit)
  puts "#{results.inspect}"
  puts ""  # Just for a clear separation in output
end

test_metric(1.1, :g, :mg)
test_metric(30, :mcg, :mg)
test_metric(0.1,:g,:mg)
