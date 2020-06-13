#To Interact:  ./bin/Worlds-Wealthiest-People

class WorldsWealthiestPeople::CLI
  
  def call 
    puts "These are the World's Wealthiest People!"
    list_billionaires
    list_descriptions
    menu 
    goodbye 
end

def list_billionaires
puts ""
puts "2019 Billionaire List in Order from Least to Greatest:"
@people = WorldsWealthiestPeople::Person.list
@people.each.with_index(1) do |person, i| 
  puts "#{i}. #{person.name_and_ranking}"
  end 
end 

def list_descriptions
puts ""
puts "2019 Billionaire Descriptions"
@people = WorldsWealthiestPeople::Person.list
@people.map{|person| puts person.description}
end 

def menu
   input = nil
     while input != "exit"
  puts ""
  puts "Continue to see the list of billionaires for 2019 with ranking, name, and description or type exit to enter. Type list to read about the full descriptions of billionaires again, type rankings to see just the billionaires and their rankings, or type exit:"
  input = gets.strip.downcase
 
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

def goodbye 
  puts ""
  puts "See you tomorrow to keep learning!"
  end 
end 