#To Interact: ./bin/Worlds-Wealthiest-People

class WorldsWealthiestPeople::Person
 attr_accessor :name_and_ranking, :description

def initialize(name_and_ranking, description)
  @name_and_ranking = name_and_ranking
  @description = description
end

def self.list
  self.scrape_people
 end

def self.scrape_people
  people = []

  people << WorldsWealthiestPeople::Scraper.scrape_url
    people
  end
end
