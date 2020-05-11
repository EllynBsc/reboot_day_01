






#defining a method for my bet game
def bet_game(user_bet, computer_bet,balance)
  if user_bet == computer_bet
    puts "you win"
    balance += 50 #incrementation, we're incrementing the value of balance by 50
  else
    puts "you lost, you chose"
    balance -= 10 #decrementation, we're decreasing the value of balance by 10
  end
end












