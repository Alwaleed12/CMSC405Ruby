# In Ruby, you can define a function without first having to define a class.
# You must use the keyword def to define a function.
def say_hello
    return 'Hello!'
end

# Obsercations: Notice the absence of curly braces around the body of the function
# Notice the absence of parenthesis following the function name. Notice the absences 
# of the return type in the functin declaration.

puts say_hello

# Every function in Ruby return a value. Even if you don't include an explicit
# return statement in the funct, Ruby will return a value. the Value that is 
# returned is the last statement processed before the function exits.
def tell_the_truth
    'Truth!'
    'Lie!'
    3.<2
end

puts tell_the_truth

# Functions in Ruby may have parameters.
def say_hello name
    return 'Hello ' + name + '!'
end

# Observations: the absences of parenthesis around the parameter names.
# Notice the absence of the data type with the parameter.

puts say_hello 'Benny'

# Every function is an object. Every function is an object of the class it returns.
puts say_hello('Benny').class

