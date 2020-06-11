class WorldsWealthiestPeople::CLI
  
  def call 
    puts "These are the World's Wealthiest People!"
    list_billionaires
    menu 
    goodbye 
end

def list_billionaires 
puts "Today's billionaire list:"
@person = WorldsWealthiestPeople::Person.list
end 

def menu 
  puts "Enter the number of the billionaire you'd like more info on or type exit to enter or type list to see the full list of billionaires again or type exit:"
 input = nil
  while input != "exit"
  input = gets.strip.downcase
  case input 
  when "1"
    puts "More info on billionaire 1..."
  when "2"
    puts "More info on billionaire 2..."
      when "list"
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