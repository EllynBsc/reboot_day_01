# INPUT OUTPUT
# INPUT: ARRAY OF HORSES
# OUPUT: STRING that states if you win or lose the horses bet

# Pseudo-code:
# 1. Print welcome
# 2. Print the horses names (we're modelizing our horses with an array, to display: each)
# 3. ask the user what he wants to bet on
# 4. Get user's bet (string)
# 5. the user is playing against the computer: we need to generate the computer_bet (sample)
# 6. Run the race 🐴 : depends => condition where we compare the choices of user & computer
    # if the user bet is the same as the computer bet
    #   "you win"
    # else
    #   "you lose"
    # end
# 4. Print results

# puts "welcome user to the best horses game ever!"
# horses = ['simon', 'caroline', 'marta', 'xavier', 'jonas', 'david']

# horses.each do |horse|
#   puts "- #{horse}"
# end

# puts "Which horse would you like to bet on?"
# user_bet = gets.chomp.downcase

# computer_bet = horses.sample

# if user_bet == computer_bet
#   puts "you win"
# else
#   puts "you lost, you chose #{user_bet} and the computer chose #{computer_bet}"
# end


# second version with a looping logic & a balance

# I need to have a balance variable with 100euros
# if I win, my balance gets increased by 50euros (incrementation of the balance)
# If I lose, my balance gets decrease by 10euros (decrementation of the balance)

 # Let’s make sure the user can’t play if she/he does not have enough money.
# => this is the condition of the looping
# puts "welcome user to the best horses game ever!"
# horses = ['simon', 'caroline', 'marta', 'xavier', 'jonas', 'david']

# horses.each do |horse|
#   puts "- #{horse}"
# end

# puts "Which horse would you like to bet on?"
# user_bet = gets.chomp.downcase

# computer_bet = horses.sample

# if user_bet == computer_bet
#   puts "you win"
# else
#   puts "you lost, you chose #{user_bet} and the computer chose #{computer_bet}"
# end


# balance = 100
# puts "welcome user to the best horses game ever!"
# horses = ['simon', 'caroline', 'marta', 'xavier', 'jonas', 'david']
# computer_bet = horses.sample
# user_answer = "yes"

# while balance >= 10 || user_answer != 'no'
#   puts "here are the horses you can bet on"
#     horses.each do |horse|
#       puts "- #{horse}"
#     end

#   puts "Which horse would you like to bet on?"
#   user_bet = gets.chomp.downcase


#   if user_bet == computer_bet
#     puts "you win"
#     balance += 50 #incrementation, we're incrementing the value of balance by 50
#   else
#     puts "you lost, you chose"
#     balance -= 10 #decrementation, we're decreasing the value of balance by 10
#   end

#   puts "your balance is now #{balance}"
#   puts "do you want to play again ? type yes or no"
#   user_answer = gets.chomp.downcase
# end

# if user_answer == "no"
#   puts "you're done playing bye!"
# else
#   puts "you cannot play anymore because you're out of money"
# end

# last step : refactoring

require_relative 'bet'

balance = 100
puts "welcome user to the best horses game ever!"
horses = ['simon', 'caroline', 'marta', 'xavier', 'jonas', 'david']
computer_bet = horses.sample
user_answer = "yes"

while balance >= 10
  puts "here are the horses you can bet on"
    horses.each do |horse|
      puts "- #{horse}"
    end

  puts "Which horse would you like to bet on?"
  user_bet = gets.chomp.downcase

  balance = bet_game(user_bet, computer_bet, balance)

  # if user_bet == computer_bet
  #   puts "you win"
  #   balance += 50 #incrementation, we're incrementing the value of balance by 50
  # else
  #   puts "you lost, you chose"
  #   balance -= 10 #decrementation, we're decreasing the value of balance by 10
  # end

  puts "your balance is now #{balance}"
  puts "do you want to play again ? type yes or no"
  user_answer = gets.chomp.downcase
  break if user_answer == "no"
end

if user_answer == "no"
  puts "you're done playing bye!"
else
  puts "you cannot play anymore because you're out of money"
end



