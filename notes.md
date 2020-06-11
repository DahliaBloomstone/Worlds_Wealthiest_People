How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure 
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface 
6. start making things rela
7. discover objects
8. program 

- A command line interface that shows the top 50 wealthiest people in the world
- user types Worlds-Wealthiest-People  (executable)
- shows a list of wealthy people (name, rank, description)

Example: Shows rank, name, description
1. 50. Laurene Powell Jobs

The first woman on our list is the creator of the Emerson Collective, and the widow of Steve Jobs.
She also created the Lauren Powell Jobs trust, which is currently the largest individual shareholder in Disney.
She has given millions to charity including a $50 million commitment to "XQ: The Super School Project.
As of 2018, her net worth stood somewhere in the region of $18.8 Billion.

Which billionaire do you want to learn more about? 


Executable goes in the bin directory. The file they are running. 


#WorldsWealthiestPeople::CLI.new.call 
class CLI that we can instantiate 
#Our CLI Controller: user interactions 
class WorldsWealthiestPeople::Cli'


BIN FILE: Loading interpreter, environment 

LOOK UP HEREDOC RUBY


TO RUN IN TERMINAL:
./bin/Worlds-Wealthiest-People



What is a wealthy person?
a wealthy person has a name
a wealthy person has a ranking
a wealthy person has a description 

want an object that has these properties that the CLI can just use

cli.rb 
@person = WorldsWealthiestPeople::Person.list 
Want to have a class method called list 
That returns to me a whole bunch of people 
Some sort of object called Person, that has class method list, that
should return these @people 

in the ./bin/console, if you type: 
WorldsWealthiestPeople::Person.list
it returns this array of data: 
 => [#<WorldsWealthiestPeople::Person:0x0000000001e3d9a0 @name="Laurene Powell Jobs", @ranking="50", @description="The first woman on our list is the creator of the Emerson Collective, and the widow of Steve Jobs. She also created the Lauren Powell Jobs trust, which is currently the largest individual shareholder in Disney. She has given millions to charity including a $50 million commitment to XQ: The Super School Project. As of 2018, her net worth stood somewhere in the region of $18.8 Billion.", @url="https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019">, #<WorldsWealthiestPeople::Person:0x0000000001e3d8d8 @name="Elon Musk", @ranking="49", @description="Working to revolutionize transportation both on Earth and in space, Elon Musk is the owner of car company Tesla Motors, and rocket company Space X. He grew up in South Africa, then immigrated to Canada at age 17, landing in the US as a transfer student at the University of Pennsylvania. As of 2018, his net worth stood somewhere in the region of $19.9 Billion.", @url="https://vocal.media/geeks/top-50-billionaires-in-the-world-for-2019">
 
 @person.each_with_index(1) do |person, i| 
if you chain the index at 1 it will start with 1 soyou don't have to do i -1 all the time 

CLI:
./bin/Worlds-Wealthiest-People
These are the World's Wealthiest People!
Today's Billionaire List:
1. #<WorldsWealthiestPeople::Person:0x0000000001a1a120>
2. #<WorldsWealthiestPeople::Person:0x0000000001a1a058>
Enter the number of the billionaire you'd like more info on or type exit to enter or type list to see the full list of billionaires again or type exit:
 
Shows ruby object notation...
changing code to this:   puts "#{i}. #{person.name} - #{person.ranking} - #{person.description}"
will show the actual people with ranking and descriptions.
 
