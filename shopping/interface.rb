# interface.rb



# INPUT / OUTPUT
# # input: hash
# store = {
#   'kiwi' => 2.30,
#   # string => integer
#   'mango' => 5,
#   'pear' => 2,
# }

# # output: array
# # shopping_bag = ['kiwi', 'mango']

# # Pseudo-code
# # 1. Print Welcome to the user
# puts "welcome to our amazing shop!!!"
# # 2. Define your store (what items are for sale?) and print to the user the items
#   # each
# store.each do |item, price|
#   puts "#{item}: #{price} euros"
# end
# # 3. Ask user what he wants to buy
# puts "hello user, what would you like to buy today? (or 'quit' to checkout)"
# # 4. Store the user_input inside of a variable (string)
# shopping_bag = []
#      # be careful!!!: we want to check that the user_input exists in the store,we can do so in ruby by checking that the user_input is a key of the store_items hash
#     user_item = gets.chomp  #if the user item is a key from the store_items
# # 5. add the user input to the array shopping_bag (create action in an array)
#   if store.key?(user_item)
#    shopping_bag << user_item # array << element_you_wantto_adding_the_array
#  else
#   puts "please ask for something we do have in the store"
#  end
# # 6. Print the bill (checkout)
#   # i need to get the prices of each item that i bought
#   # i know that my items that i m buying are inside of my shopping bag
#   # i can iterate over my shopping bag and get the price of each element that i m buying thanks to
# #my bill is a sum, a sum in ruby is an integer
# bill = 0 # defining an empty bill
# shopping_bag.each do |item|
#   puts "#{item} - #{store[item]}"
#   bill = bill + store[item] # im incrementing the bill by the price of every item contained inside of my shopping bag
# end
# puts bill
# # 7. Make it a loop: so the user can keep on adding items in his shopping bag
#   # while /until




#   store = {
#     'kiwi' => 2.30,
#     # string => integer
#     'mango' => 5,
#     'pear' => 2,
#   }
# puts "welcome to our amazing shop!!!"

# user_item = nil
# shopping_bag = []
# while user_item != "quit" #compare in ruby

#   store.each do |item, price|
#     puts "#{item}: #{price} euros"
#   end

#   puts "What would you like to buy today? (or 'quit' to checkout)"
#     user_item = gets.chomp  #if the user item is a key from the store_items
#        # be careful!!!: we want to check that the user_input exists in the store,we can do so in ruby by checking that the user_input is a key of the store_items hash
#   if store.key?(user_item)
#     shopping_bag << user_item # array << element_you_wantto_adding_the_array
#   else
#     puts "please ask for something we do have in the store"
#   end
#   # 7. Make it a loop: so the user can keep on adding items in his shopping bag
#     # while /until
#     puts "shopping bag is now: #{shopping_bag}"
# end


#   bill = 0 # defining an empty bill
#   puts "shopping_bag #{shopping_bag}"

#   shopping_bag.each do |item|
#     puts "item:#{item} - price:#{store[item]}"
#     bill = bill + store[item] # im incrementing the bill by the price of every item contained inside of my shopping bag
#   end
#   puts "your bill is #{bill}"





# SECOND STEP: ADDING QUANTITY

# input

# output : hash
# shopping_bag = {
#   'kiwi' => 2,
#   'mango' => 5,
# }

# we need to change the shopping_bag to a hash instead of an array
# we need to know how to add an element in a hash
    # name_of_the_hash[name_of_the_key] = value
# we need to take into consideration the quantity when we sum our bill
# when you iterate over your shopping bag, you need to multiply the price by the quantity


 # store = {
 #    'kiwi' => 2.30,
 #    # string => integer
 #    'mango' => 5,
 #    'pear' => 2,
 #  }

# puts "welcome to our amazing shop!!!" #print welcome to the user

# user_item = nil # declaring the vaariable user_item that i need to compare in my while loop
# shopping_bag = {} #declaring my hash shopping bag which will look like this { 'user_item' => user_quantity,}

# while user_item != "quit" #while the user is not typing the string quit, i should keep on executing the loop

#   store.each do |item, price| #presenting nicely the content of my hash called store
#     puts "#{item}: #{price} euros"
#   end

#   puts "What would you like to buy today? (or 'quit' to checkout)" #asking the user the element he wants to buy
#   user_item = gets.chomp  #store the value of the item so I can set it as a key of my shopping_bag hash

#   if user_item != "quit" #dont' run the following code if the user says quit
#     puts "how many of the #{user_item} do you want to buy? "
#     user_quantity = gets.chomp.to_i #the user gives you the quantity of the item he wants to buy

#     if store.key?(user_item) #i can only add this key/value pair if the item exists in the store
#       # name_of_the_hash[name_of_the_key] = value #creating a key/value pair in the hash called shopping_bag
#       shopping_bag[user_item] = user_quantity #  shopping_bag { 'kiwi' => 2}
#     else
#       puts "please ask for something we do have in the store"
#     end

#       puts "shopping bag is now: #{shopping_bag}" #printing to the user the shopping bag
#   end
# end


#   bill = 0 # defining an empty bill
#   puts "shopping_bag #{shopping_bag}"
# # shopping_bag = { 'kiwi' => 2, 'mango' => 3}
#   shopping_bag.each do |item, quantity|
#     unit_price_per_item = store[item]
#     puts "item:#{item} - unit price:#{unit_price_per_item]} - quantity: #{quantity}"
#     bill = bill + (unit_price_per_item * quantity) # im incrementing the bill by the price of every item contained inside of my shopping bag
#   end
#   puts "your bill is #{bill}"



# THIRD STEP: AVAILABILITY


#we need to modelize our store hash with adding the availability


# store is a big hash that contains:
# keys that are strings elements
# each key has a baby hash as a value
# this baby_hash has 2 key value pairs
# one availability key value pair
# one price key value pair

# when the user is chosing an item
# we need to check if the item is in the store (already done)
# but we need to check that it is available
# to acces the availability of an item in the store:
# store['kiwi'][:availability]
# if the item is available and there is more thant what the user is asking
  # i can add this item to my shopping bag
  # i need to decrease the availability by the user_quantity

# input is a big hash with nested baby_hashes
 store = {
    'kiwi' => { price: 2.30, availability: 5 },
    'mango' => { price: 5, availability: 2 },
    'pear' => { price: 3, availability: 4 }
  }


puts "welcome to our amazing shop!!!" #print welcome to the user

user_item = nil # declaring the vaariable user_item that i need to compare in my while loop
shopping_bag = {} #declaring my hash shopping bag which will look like this { 'user_item' => user_quantity,}

while user_item != "quit" #while the user is not typing the string quit, i should keep on executing the loop
  puts "Here is what we have in our shop !!"
  store.each do |item, baby_hash| #presenting nicely the content of my hash called store
    puts "> #{item}: #{baby_hash[:price]} euros - availability: #{baby_hash[:availability]}"
  end

  puts "What would you like to buy today? (or 'quit' to checkout)" #asking the user the element he wants to buy
  user_item = gets.chomp.downcase  #store the value of the item so I can set it as a key of my shopping_bag hash

  if user_item != "quit" #dont' run the following code if the user says quit
    puts "how many of the #{user_item} do you want to buy? "
    user_quantity = gets.chomp.to_i #the user gives you the quantity of the item he wants to buy

    if store.key?(user_item) && store[user_item][:availability] >= user_quantity


      if shopping_bag[user_item] # if the user already chose an item and wants to change the value of it we should update it
        shopping_bag[user_item] = shopping_bag[user_item] + user_quantity #adding to the shopping bag
      else
      # otherwise set it for the first time
        shopping_bag[user_item] = user_quantity
      end

      store[user_item][:availability] = store[user_item][:availability] - user_quantity #decrease the availability of the item bought by the user from the store

      #we're updating the value of the availability
      # name_of_the_hash[name_of_the_key] = new_value

    else
      puts "please ask for something we do have in the store"
    end

      puts "Your shopping bag is now: #{shopping_bag}" #printing to the user the shopping bag
  end
end


  bill = 0 # defining an empty bill
  puts "shopping_bag #{shopping_bag}"
# shopping_bag = { 'kiwi' => 2, 'mango' => 3}
  shopping_bag.each do |item, quantity|
    unit_price_per_item = store[item][:price] #accessing the price of each item in the store hash
    puts "item:#{item} - unit price:#{unit_price_per_item} - quantity: #{quantity}"
    bill = bill + (unit_price_per_item * quantity) # im incrementing the bill by the price of every item contained inside of my shopping bag
  end
  puts "your bill is #{bill}"
