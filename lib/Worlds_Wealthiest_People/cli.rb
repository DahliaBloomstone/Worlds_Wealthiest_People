class WorldsWealthiestPeople::CLI
  
  def call 
    puts "These are the World's Wealthiest People!"
    list_billionaires
    menu 
    goodbye 
end

def list_billionaires 
puts "2019 Billionaire List in order from least to greatest:"
@people = WorldsWealthiestPeople::Person.list
@people.each.with_index(1) do |person, i| 
  puts "#{i}. #{person.name_and_ranking} - #{person.description}"
  end 
end 

def menu
   input = nil
     while input != "exit"
  puts "Continue to see the list of billionaires for 2019 with ranking, name, and description or type exit to enter or type list to see the full list of billionaires again or type exit:"
  input = gets.strip.downcase
 
  if input.to_i > 0 
    the_person = @people[input.to_i-1]
     puts "#{i}. #{the_person.name_and_ranking} - #{the_person.description}"
    elsif input == "list"
    list_billionaires 
     else 
        puts "Not sure what you want, type list or exit"
      end 
    end
  end 

def goodbye 
  puts "See you tomorrow for more information!"
  end 
end 