#call necessary files 
require 'ruby2d'
require_relative "convocationOptions.rb"
require_relative 'sleepin.rb'
require_relative 'getLost.rb'
require_relative 'attendconvocation.rb'
require_relative 'toodrunk.rb'
require "./MountainDay/RubyFiles/mountain_main.rb"
require "./Downtown/RubyFiles/downtown_main.rb"
require_relative "mouse_down.rb"
require_relative "hover_mouse.rb"


#------------------------------------
# call the 3 main scenarios of the quiz
require "./Downtown/RubyFiles/downtown_main.rb"
require "./MountainDay/RubyFiles/mountain_main.rb"
require "./Convocation2/RubyFiles/ConvocationMain.rb"
#------------------------------------

$score = [] # hash map for the scores to determine the major 
set background: "#9ADCFF" #set background color of the game


def convocation_main()
    puts "start of convocation"
    $state = 1 # defines the state of each option
    $convocation = Convocation.new # call the first class of Convocation
    $convocation.display #display all features of convocation class
end

