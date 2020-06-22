#To Interact: ./bin/Worlds-Wealthiest-People

class WorldsWealthiestPeople::Person
 attr_accessor :name_and_ranking, :description

# @@all = []

def self.list
#  Scrape billionaire website and then return people based on that data
  self.scrape_people
 end 

def self.scrape_people
  people = []

  people << self.scrape_url
    people
  end

  def self.scrape_url
    doc = Nokogiri::HTML(open("https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019"))

   person = self.new
   person.name_and_ranking = doc.search("h3.css-rv324f-Heading.em4arlq0").text.strip
   person.description = doc.search("p.css-1oblyum-P.e1ccqnho0").text.strip
   person
  end
end

# move the scraper into its own class
# return values / iterators
# live coding exercise
