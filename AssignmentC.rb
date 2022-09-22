# 1. Write the lines of code that use a block-form while loop to compute
# the power of a number. The power of a number tells you how 
# many times to use the number in a multiplication statement; for example,
# 2 to the 0 power is 1
# 2 to the 1st power is 2 
# 2 to the 2nd power is 2 * 2 
# 2 to the 3rd power is 2 * 2 * 2
# 2 to the 4th power is 2 * 2 * 2 * 2
# 2 to the 5th power is 2 * 2 * 2 * 2 * 2
x = 2
y = 0
answer = 0
while y.<5
    answer = x**y
    print answer
    puts
    y = y.+1
end

# 2. Write a function named gen_power that computes and returns
# the power of a number. It must have two integer input parameters; 
# the first must contain the number and the second must contain the power.
def gen_power x, y
    x = x**y
    return x
end

# 3. Write the code to call the gen_power function and output the 
# return from the function.
puts gen_power 3, 4
# 4. Write a function named gen_power that returns a code block. The code
# block should compute and return the power of a number. The code block
# must have two integer input parameters; the first must contain the number 
# and the second must contain the power.
def gen_power x, y
    lambda {x ** y}
end

# 5. Write the code to call the gen_power function and store the code 
# block it returns in a variable named p.
p = gen_power 4, 3

# 6. Write the code to execute the code block contained in p 
# and output the code block's return.
puts p.call

# 7. Explain how you interacted with the Ruby programming language? Your
# response to this question must be at least 1 full paragraph (50 words).
# Ruby is a platform independent; It may be  run on any platform (Linux, Windows, Mac, 
# etc.) as long as the platform dependent Ruby Interpreter 
# installed. and it has language Libraries; C:\Ruby31-x64\lib\ruby\3.1.0.
# Therefore, it is Interpreted in Scripting language. Code is executed at runtime by an 
# Ruby Interpreter. Plus, it has its own Ruby API. As what we do in class, we use Ruby 
# in Visual Studio Code. Sidenote, Ruby extensions must be installed.


# 8. Which Ruby module provides a whole set of I/O related methods?
# # Ruby provides a whole set of I/O related methods in the Kernel module
# a Ruby module is like a java interface.


# 9. What is Ruby's typing model?
# Two major category (1) Strongly Typed and (2) Weakly Typed
# (1) Strongly Typed: A variable (or object) has a type and that 
# type cannot change. 
# (2) Weakly Typed: The type of a variable (or object) can change 
# depending on the context in which it’s being used.


# 10. What syntax must you use to reference a variable value within in a String?
# There are not particular syntax to use to refernce a varibale within in a string
# Unless Its strongly typed
# (1) Strongly typed: A String is always a String
# (2) Weakly typed: A String can be treated like an Integer


# Bonus (5 points). Explain what it means to be statically typed?
# The type of every variable (or object) is enforced at compile time.