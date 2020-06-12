class WorldsWealthiestPeople::CLI
  
  def call 
    puts "These are the World's Wealthiest People!"
    list_billionaires
    menu 
    goodbye 
end

def list_billionaires 
puts <<-DOC
  1. 50. Laurene Powell Jobs
The first woman on our list is the creator of the Emerson Collective, and the widow of Steve Jobs.
She also created the Lauren Powell Jobs trust, which is currently the largest individual shareholder in Disney.
She has given millions to charity including a $50 million commitment to "XQ: The Super School Project.
As of 2018, her net worth stood somewhere in the region of $18.8 Billion.
2. 49. Elon Musk
Working to revolutionize transportation both on Earth and in space, Elon Musk is the owner of car company Tesla Motors, and rocket company Space X.
He grew up in South Africa, then immigrated to Canada at age 17, landing in the US as a transfer student at the University of Pennsylvania.
As of 2018, his net worth stood somewhere in the region of $19.9 Billion.
DOC
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
  puts "See you tomorrow to keep reading!"
  end 
end 


TRIED: class WorldsWealthiestPeople::CLI
  
  def call 
    puts "These are theWorld's Wealthiest People!"
    list_billionaires
    list_descriptions
    menu 
    goodbye 
end

def list_billionaires
puts ""
puts "2019 Billionaire List in order from least to greatest:"
@people = WorldsWealthiestPeople::Person.list
@people.each.with_index(1) do |person, i| 
  puts "#{i}. #{person.name_and_ranking}"
  end 
end 

def list_descriptions 
  puts ""
  puts "2019 Billionaire List descriptions:"
  @people = WorldsWealthiestPeople::Person.descriptions 
  @people.each.with_index(1) do |person, i| 
  @people.map{|person| puts person.descriptions}
  puts "#{i}. #{the_person.descriptions}"
  end
end 

  
def menu
   input = nil
     while input != "exit"
  puts ""
  puts "Continue to see the list of billionaires for 2019 with ranking, name, and description or type exit to enter or type list to see the full list of billionaires again or type exit:"
  input = gets.strip.downcase
 
     if input.to_i > 0 
    the_person = @people[input.to_i-1]
   elsif input == "list"
    list_billionaires 
     elseif input == "descriptions"
       list_descriptions
     else 
       puts ""
        puts "Not sure what you want, type list or exit"
      end 
    end
  end 

def goodbye 
  puts ""
  puts "See you tomorrow to keep reading!"
  end 
end 