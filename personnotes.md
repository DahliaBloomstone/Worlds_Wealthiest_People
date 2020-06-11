class WorldsWealthiestPeople::Person 
 attr_accessor :name, :ranking, :description, :url
 
 def self.list 
#  Scrape billionaire website and then return people based on that data 
  self.scrape_people
 end 
      
def self.scrape_people    
person_1 = self.new 
person_1.name = "Laurene Powell Jobs"
person_1.ranking = "50"
person_1.description = "The first woman on our list is the creator of the Emerson Collective, and the widow of Steve Jobs. She also created the Lauren Powell Jobs trust, which is currently the largest individual shareholder in Disney. She has given millions to charity including a $50 million commitment to XQ: The Super School Project. As of 2018, her net worth stood somewhere in the region of $18.8 Billion."
person_1.url = "https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019"

person_2 = self.new 
person_2.name = "Elon Musk"
person_2.ranking = "49"
person_2.description = "Working to revolutionize transportation both on Earth and in space, Elon Musk is the owner of car company Tesla Motors, and rocket company Space X. He grew up in South Africa, then immigrated to Canada at age 17, landing in the US as a transfer student at the University of Pennsylvania. As of 2018, his net worth stood somewhere in the region of $19.9 Billion."
person_2.url = "https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019"

[person_1, person_2]
    end 

 end 
  
  
  #end up with an array of people I just scraped 

