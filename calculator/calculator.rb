# this is the file for my method calculator

def calculate(first_number, second_number, operator)
  case operator # operator ==
  when "+"
   return result =  first_number + second_number
  when "-"
   return result =  first_number - second_number
  when "/"
   return result =  first_number / second_number
  when "*"
   return result =  first_number * second_number
  else
    puts "please enter an operator that exists: + / - *"
  end
end

# refactoring with case statement
def calculate(first_number, second_number, operator)
  case operator
  when "+" then first_number + second_number
  when "-" then first_number - second_number
  when "/" then first_number / second_number
  when "*" then first_number * second_number
  else
    puts "please enter an operator that exists: + / - *"
  end
end
