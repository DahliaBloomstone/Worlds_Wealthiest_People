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