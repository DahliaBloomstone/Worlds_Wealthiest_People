#To interact: ./bin/Worlds-Wealthiest-People

class WorldsWealthiestPeople::Scraper

  def self.scrape_url
    doc = Nokogiri::HTML(open("https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019"))
    name_and_ranking = doc.search("h3.css-rv324f-Heading.em4arlq0").text.strip
    description = doc.search("p.css-1oblyum-P.e1ccqnho0").text.strip


    WorldsWealthiestPeople::Person.new(name_and_ranking, description)
    end
 end
