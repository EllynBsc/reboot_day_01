# interface.rb

# Pseudo-code (what are the steps in plain english):
# 1. Say hello to the user
# 2. Ask user for the first number
# 3. Get first_number: integer input
# 4. Ask user for second number
# 5. Get second_number: integer input
# 6. Ask the user the operator he wants to use: + - / *
# 7. Get the operator the user chose
# 8. #depends => conditions
# # if/else with comparing the operator
# if he choses addition
#   we perform an addition
# elsif he choses division
#   we perform a divisions
# elsif he choses substraction
#   we perform a substraction
# elsif he choses multiplication
#   we perform a multiplication
# end


# puts "hello user welcome to the calculator program!"

# puts "what is the first number you want to choose ?"
# first_number = gets.chomp.to_i

# puts "what is the second number you want to choose ?"
# second_number = gets.chomp.to_i

# puts "what do you want to perform as an operation: type + - * /"
# operator = gets.chomp

# = is an assignement operator
# == is a comparison operator

# if operator == "+"
#   result = first_number + second_number
# elsif operator == "-"
#   result = first_number - second_number
# elsif operator == "/"
#   result = first_number / second_number
# elsif operator == "*"
#   result = first_number * second_number
# else
#   puts "please enter an operator that exists: + / - *"
# end


# case operator # operator ==
# when "+"
#  result =  first_number + second_number
# when "-"
#  result =  first_number - second_number
# when "/"
#  result =  first_number / second_number
# when "*"
#  result =  first_number * second_number
# else
#   puts "please enter an operator that exists: + / - *"
# end


# puts "Your result is #{result}"


# SECOND VERSION : with looping

# build a loop for the calculator until the user says "No"
# build a loop for the calculator while the user says "yes"

# while condition is true
  #keep looping
# end

# until condition is true
  #keep looping
# end

# user_answer = "Y"

# # while user_answer != "N"
# until user_answer == 'N'
#   puts "hello user welcome to the calculator program!"

#   puts "what is the first number you want to choose ?"
#   first_number = gets.chomp.to_i

#   puts "what is the second number you want to choose ?"
#   second_number = gets.chomp.to_i

#   puts "what do you want to perform as an operation: type + - * /"
#   operator = gets.chomp
#   case operator # operator ==
#   when "+"
#    result =  first_number + second_number
#   when "-"
#    result =  first_number - second_number
#   when "/"
#    result =  first_number / second_number
#   when "*"
#    result =  first_number * second_number
#   else
#     puts "please enter an operator that exists: + / - *"
#   end


#   puts "Your result is #{result}"
#   puts "do you want to play again? type Y or N"
#   user_answer = gets.chomp.upcase

# end

# until the user is saying "Y"
#   #looop
# end


# THIRD VERSION: REFACTORING WITH A METHOD FILE AND AN INTERFACE

require_relative 'calculator'


puts "hello user welcome to the calculator program!"
user_answer = "Y"

# while user_answer != "N"
until user_answer == 'N'

  puts "what is the first number you want to choose ?"
  first_number = gets.chomp.to_i

  puts "what is the second number you want to choose ?"
  second_number = gets.chomp.to_i

  puts "what do you want to perform as an operation: type + - * /"
  operator = gets.chomp
  # executing a method is calling a method with some arguments
  puts final_result = calculate(first_number, second_number, operator)

  puts "Your result is #{final_result}"

  puts "do you want to play again? type Y or N"
  user_answer = gets.chomp.upcase

end





