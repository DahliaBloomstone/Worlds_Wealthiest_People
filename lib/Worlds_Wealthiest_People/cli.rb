class WorldsWealthiestPeople::CLI
  
  def call 
    puts "These are the World's Wealthiest People!"
    list_billionaires
    menu 
    goodbye 
end

def list_billionaires 
puts "Today's Billionaire List:"
@person = WorldsWealthiestPeople::Person.list
@person.each.with_index(1) do |person, i| 
  puts "#{i}. #{person.name} - #{person.ranking} - #{person.description}"
end 
end 

def menu
   input = nil
     while input != "exit"
  puts "Enter the number of the billionaire you'd like more info on or type exit to enter or type list to see the full list of billionaires again or type exit:"
  input = gets.strip.downcase
 
  if input.to_i > 0 
    puts @person[input.to_i-1]
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