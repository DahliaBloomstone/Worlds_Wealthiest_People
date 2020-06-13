#Loading a bin file is like loading the interpreter, an environment
#Load Dependencies 
#Requiring files 
#Once you have a bin file working, you can move on 
W-W-P file:
#!/usr/bin/env ruby 

require "bundler/setup"
require "Worlds_Wealthiest_People"

WorldsWealthiestPeople::CLI.new.call 
#class CLI that we can instantiate 
#Our CLI Controller: user interactions 
class WorldsWealthiestPeople::Cli'

console file:
#!/usr/bin/env ruby

require "bundler/setup"
require "Worlds_Wealthiest_People"

# You can add fixtures and/or initialization code here to make experimenting
# with your gem easier. You can also use a different console, if you like.

# (If you use this, don't forget to add pry to your Gemfile!)
# require "pry"
# Pry.start

require "irb"
IRB.start(__FILE__)
