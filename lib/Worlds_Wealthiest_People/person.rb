class WorldsWealthiestPeople::Person 
 attr_accessor :name, :ranking, :description, :url
 
 def self.list 
#  Scrape billionaire website and then return people based on that data 
  self.scrape_people
 end 
      
def self.scrape_people  
  people = [] 
  
  people << self.scrape_url
  
  #go to website, find the people
  #extract the properties
  #instantiate a person 

    people
  end 
  
  def self.scrape_url 
    doc = Nokogiri::HTML(open("https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019"))
    binding.pry 
    list_of_names_and_rankings = doc.css("h3.css-rv324f-Heading.em4arlq0")
    descriptions = ("p.css-1oblyum-P.e1ccqnho0")
    
  end 
end 
  
