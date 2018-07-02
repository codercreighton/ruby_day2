# # The Little Coder That Could: Print out "I think I can" 5x!

# 5.times do 
# 	puts "I think I can!"
# end	

#--------------------------------------------------#

# # Times Square: Initiate a variable called 'count' at 0. For ten times, display the square of 'count', and then increment each time by 1.

# count = 0

# 10.times do
# 	puts count * count
# 	count += 1
# end	

#--------------------------------------------------#
# # Ask the user for a number (1-10), print the doubles of their number through 10.

# # (Make sure you include the double of 10!)

# puts "Give me a number between 1 and 10:"
# num = gets.chomp.to_i

# until num > 10 
# 	puts num + num

# #prevent an infinite loop by incrementing the value of num
# 	num += 1
# end	


#--------------------------------------------------#

# # Now reverse it! Ask for again for a number between 1 and 10, then count down to 0.

# print "Give me a number between 1 and 10:"
# num = gets.chomp.to_i

# until num < 0
# 	puts num + num
# 	num -=1
# end	

#--------------------------------------------------#
# # Until Dad says yes, keep asking him if we can go to Itchy and Scratchy Land (or Mt. Splashmore).

# dad = "no"

# until dad == "yes"
# 	puts "Dad, can we go to Itchy and Scratchy Land?"
# 	dad = gets.chomp.downcase
# end	

# puts "Thanks Dad!  You are the best!"

#--------------------------------------------------#
# # Pretend the computer is being passed around during class introductions.

# # The student at the very back is named Jacob, so have your program take names until his name is entered.


# name = ""

# while name != "Jacob"
# 	puts "Please enter your name: "
# 	name = gets.chomp.downcase.capitalize
# end

# puts "Thank you Jacob.  Please return the laptop."	


#--------------------------------------------------#
# # Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.


# num = rand(1..10)

# while num != 7
# 	puts num
# 	num = rand(1..10)
# end	

# puts "We've finally reached #{num} and exited the loop! "

#--------------------------------------------------#

# # Create an array of animals...

# # Use .each to iterate through and print out the contents of your array.


# animals = ["cat", "dog", "hamster", "parrot"]

# animals.each do |animal|
# 	puts animal
# end	

#--------------------------------------------------#

# # Set an animal as your "favorite",

# # if your favorite animal is in the array, print to the screen: "I love [that animal]!"; if it's not in there, print to screen: "No, I don't care for those."


# puts "What's your favorite animal?"
# favorite = gets.chomp.downcase

# animals = ["cat", "dog", "hamster", "parrot"]

# # animals.each do |animal|
# # 	if favorite == animal
# # 		puts "I love #{animal}"
# # 	else
# # 		puts "I don't like #{animal}"	
# # 	end	
# # end	


##What would be a way to do it without the .each iterator

# puts "What's your favorite animal?"
# favorite = gets.chomp.downcase

# animals = ["cat", "dog", "hamster", "parrot"]


# if animals.include? favorite
# 	puts "I love #{favorite}s"
# else
# 	puts "I don't like those animals!"	
# end
 
 #--------------------------------------------------#

# #iterating through a hash
# teachers= {100 => "Jones", 200 => "Marks", 300 => "Adams"}

# teachers.each do |room, teacher|
# 	puts "In room #{room}, you will find Professor #{teacher}."
# end	

# #--------------------------------------------------#
# # Create a Hash with keys "Name", "Age", "Hometown" and "Favorite Food".
# # Ask the user for the values!
# # Iterate through the Hash and introduce this person:
# # "This is _____,
# # They are ___-years-old,
# # from ________,
# # and their favorite food is _________."



# person = {}

# puts " What's your name? "
# person["Name"] = gets.chomp.downcase.capitalize
# puts "What's your age?"
# person["Age"] = gets.chomp.to_i
# puts "What's your Hometown?"
# person["Hometown"] = gets.chomp.downcase.capitalize
# puts "What's your favorite food?"
# person["Favorite Food"] = gets.chomp


# person.each do |k, v|
# 	if k == "Name"
# 		puts "This is #{v},"
# 	elsif k == "Age"
# 		puts "They are #{v}-years-old, "
# 	elsif k == "Hometown"	
# 		puts "from #{v},"
# 	elsif k == "Favorite Food"
# 		puts "and their favorite food is #{v}."	
# 	end
# end		


# #without iterator
# puts "******* WITHOUT ITERATOR *************"
# puts "This is #{person["Name"]}, They are #{person["Age"]}-years-old,
# from #{person["Hometown"]}, and their favorite food is #{person["Favorite Food"]}."

#--------------------------------------------------#
# # Ask the user for 5 numbers,

# # store them in an array,

# # then find the sum, product, largest, and smallest of those numbers.

# num_array = []

# #This block takes in 5 numbers from our user and stores them in our array
# 5.times do 
# 	puts "Give me a number:"
# 	num = gets.chomp.to_i
# 	num_array.push(num)
# end	


# product = 1

# #This block calculates the product of all the numbers in the array
# num_array.each do |num|
# 	product *= num
# end	

# puts "The smallest number in our array is #{num_array.min}, the largest number in our array is #{num_array.max}, the sum of all the numbers in our array is #{num_array.sum}, the product of all the numbers is #{product}."

#--------------------------------------------------#

# You are a car dealer - create a hash of vehicles:

# The model is the Key, the make is the Value.

# Ask the customer what car (model) they are looking for,

# use the Hash to determine if you have that vehicle, and what make it is.

# (e.g., "Oh, you're looking for a Civic? Our Honda selection is right over here...")



vehicles = {"Civic" => "Honda", "Odyssey" =>"Honda", "Explorer" => "Ford", "Camry" => "Toyota"}

puts "Welcome to Creighton Cars! What car are you looking for?"
car = gets.chomp.downcase.capitalize

if vehicles.has_key? car
	puts "Oh, you're looking for a #{car}? Our #{vehicles[car]} selection is right this way!"
else
	puts "Sorry, we don't carry that vehicle here.  Maybe check our other locations."	
end	


#--------------------------------------------------#
#The longer way


vehicles = {"Civic" => "Honda", "Odyssey" =>"Honda", "Explorer" => "Ford", "Camry" => "Toyota"}

puts "Welcome to Creighton Cars! What car are you looking for?"
car = gets.chomp.downcase.capitalize


found = false

vehicles.each do  |model, make|
	if car == model
		found = true
	end	
end	

if found == true
	puts "Oh, you're looking for a #{car}? Our #{vehicles[car]} selection is right this way!"
else 
	puts "Sorry, we don't carry that vehicle here.  Maybe check our other locations."	
end		






