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
