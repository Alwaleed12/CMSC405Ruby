# Decision (expressions) in Ruby evaluate to true or false
x = 4

puts x.<5
puts x.<=4
puts x.>4

# True and false are even objects.
puts true.class
puts false.class
puts true.methods.inspect
puts false.methods.inspect

# Simple decisions may be in one-line or block form.
# Block Form If
if x.==4
    puts 'x is equal to 4.'
end

# Observations: Notice the absence of curly brackets around the code block.
# NOtice the absence of parenthesis around the expression. The keyword end
# is used to tell Ruby the end of the code block to be executed.

# One-line Form If
puts 'x is equal to 4.' if x.==4
puts 'x is not equal to 5.' if x.!=5

# As a programmer, you should strive to write fewer lines of code.

# One-line Form Unless
# Unless test if its condition is false.
puts 'x is not equal to 5.' unless x.==5

# Block Form Unless-Else
unless x.==4
    puts 'x is not equal to 4.'
else
    puts 'x is is equal to 4.'
end

# Decisions may involve other types of objects, including Dates.
today = Time.now
puts today
puts today.class

# Block Form If-Elsif
if today.saturday?
    puts 'Do chores around the house.'
elsif today.sunday?
    puts 'Relax.'
else
    puts 'Go to school.'
end

# There are other values in Ruby that evaluate to true.
puts 'true is true.' if true
puts '1 is true.' if 1
puts '0 is true.' if 0
puts '1.5 is true.' if 1.5
puts 'Time.now is true.' if Time.now

# The only things that don't evaluate to true are false and nil.
puts 'false is not true.' if false
puts 'nil is not true.' if nil

# Unless tests if its condition is false
puts 'false is not true.' unless false
puts 'nil is not true.' unless nil

# The logical operators && and || work very similar to the way they do in Java.
puts false && true
puts false || true

# There is short circuit evaluation in Ruby. The interpreter skips the evaluation
# of sub-expressions in a logical expression.
# If sub-expressions are joined by &&, the interpreter will skip the evaluation of
# all subsequent expressions as soon as the first false sub-expression is encountered.
# puts true && this_will_cause_an_error
puts false && this_will_cause_an_error

# If sub-expression are joined by ||, the interpreter will skip the evaluation of
# all subsequent expressions as soon as the first true sub-expression is encountered.
puts true || this_will_cause_an_error
# puts false || this_will_cause_an_error

# Whenever you need to use If-elseif statements, you should consider using
# the Ruby case statement. In other programming langues it's know as a switch
# statement
# The components of the Ruby case statement are:
# case - starts a case statement definition. Takes the cariable you are going
# to work with.
# when - every condition that can be mathced is one when statement.
# else - if nothing matches then else will be executed. This is optional.
capacity = 250

case capacity
when 0
    puts 'You ran out of gas'
when 1..20
    puts 'The tank is almost empty. Quickly find a gas station.'
when 21..70
    puts 'You should be ok for now.'
when 71..100
    puts 'The tank is almost full.'
else 
    puts "Error: capacity has an invalid value #{capacity}"
end