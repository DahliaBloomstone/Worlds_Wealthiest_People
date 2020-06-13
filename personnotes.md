#To Interact: ./bin/Worlds-Wealthiest-People

class WorldsWealthiestPeople::Person 
 attr_accessor :name_and_ranking, :description
 
 individual instances of billionaire data with two properties: 1. name and ranking and 2. descriptions 
 #Parentclass::ChildClass 
 #with two attribute accesors, nake and ranking, and description, since those are the two pieces of data the user will be prompted to choose from
 
 #I only used two 
 
 def self.list #self keyword here refers to the Person class, calling on the instance of list (billionaire list)
#Here we want to Scrape the billionaire website and then return people based on that data 
  self.scrape_people #scrape people 
 end 
      
def self.scrape_people  #giving this method 
  people = []  #an empty array to put all of the billionaire data 
  
  people << self.scrape_url #we are going to put all of the scraped data into the empty people array 
    people  #call the people array 
  end 
  
  def self.scrape_url #method actually scrapes the url using nokogiri 
    doc = Nokogiri::HTML(open("https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019")) #putting my URL into the nokogiri open uri method 
   
   #self.new is a method that instantiates a new part of the doc and grabs the instance variables of the article and saves them. Each time a new article instance is created, it is saved into the person array - an array that contains all the doc objects.

  #scraped the html data from the website 
  #text.strip is used at the end of the Nokogiri method because .strip removes all whitespace
  and .text removes the html and css part of the data 
   person = self.new  
   person.name_and_ranking = doc.search("h3.css-rv324f-Heading.em4arlq0").text.strip 
   
   person.description = doc.search("p.css-1oblyum-P.e1ccqnho0").text.strip 
   person
  end 
end 
  











