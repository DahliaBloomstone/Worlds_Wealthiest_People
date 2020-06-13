#To Play:  ./bin/Worlds-Wealthiest-People
class WorldsWealthiestPeople::CLI #I am creating a class, WWW, that is a parent::child syntax
                                  #WWP::CLI just gives the WWP class access to all constants, instance methods, etc, without stating that a WWP is a type of cli. The :: syntax carries all public items over to the inheriting class or module.
                                  #CLI controller 

def call  #defining a method call that will puts the first message the user sees 
puts "These are the World's Wealthiest People!"
list_billionaires #method 1 
list_descriptions #method 2
menu              #method 3
goodbye           #method 4
end

#first method, list billionaires, added a space between the data and I am allowing the user to see the billionaire list from least to greatest. 
#Instance variable @people = grabbing from the person class and creating the billionaire list 

def list_billionaires 
puts "" #Puts a space 
puts "2019 Billionaire List in Order from Least to Greatest:"
@people = WorldsWealthiestPeople::Person.list 
@people.each.with_index(1) do |person, i| 
puts "#{i}. #{person.name_and_ranking}"
end 
end 

#this method does a similar thing as above, it calls the instance variable @people and grabs from the person class for the billionaire descriptions array 
#.map iterates through each person and puts the persons description from the website and returns that entire array of data 
#you call map with a block. I chose map and not each because map returns a new array with the transformed objects and each would not collect the results.
def list_descriptions
puts ""
puts "2019 Billionaire Descriptions"
@people = WorldsWealthiestPeople::Person.list
@people.map{|person| puts person.description}
end 

 #the gets method is being called. the gets method captures the last thing the user typed into the          terminal. the return value for gets is the text typed into the terminal. 
 #strip removes any whitespace
#set the first value to an empty space, and start a while loop, if input does not equal exit then continue 

def menu
input = nil 
while input != "exit"
puts ""
puts "Continue to see the list of billionaires for 2019 with ranking, name, and description or type exit to enter. Type list to read about the full descriptions of billionaires again, type rankings to see just the billionaires and their rankings, or type exit:"
input = gets.strip.downcase  
 
 
 #continuing the loop, if it converts to an integer and it is greater than 0, it will treat it as an integer otherwise it will treat it as a string 
 # @people[input.to_ ] return the array index of that person description
 #the rest of this loop tells the program/cli that if the person types list, they will get back the list of the billionaire descriptions, and if the person types rankings, they will just get the billionaire names and rankings 
 #at the end, if they type "children?" that is not data that this program gets, so it will give them another option.
if input.to_i > 0 
the_person = @people[input.to_i-1]
puts "#{i}. #{the_person.description}" 
elsif input == "list"
list_descriptions 
elsif input == "rankings"
list_billionaires 
else 
puts ""
puts "Not sure what you want, type list, rankings, or exit"
end 
end
end 

#final cli statement 
def goodbye 
puts ""
puts "See you tomorrow to keep learning!"
end 
end 






