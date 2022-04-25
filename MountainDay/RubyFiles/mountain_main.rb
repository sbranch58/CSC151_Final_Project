require 'ruby2d' # call all the files in the mountainday scenario 

require_relative "onephase.rb"

#------------------------------------
# all the files for baking options 
require_relative "BakingOptions.rb"

require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"
require_relative "DonutInfo.rb"

#------------------------------------
# all the files for orchard options 
require_relative "OrchardOptions.rb"

require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative 'HayrideInfo.rb'

#------------------------------------
# all the files for hiking options 
require_relative "HikingOptions.rb"

require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
#------------------------------------
# all the files for campus activities options 
require_relative "campusOptions.rb"

require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
#------------------------------------
require "./Convocation2/RubyFiles/attendconvocation.rb"

$score = [] # tracks the score for the determined major 


def mountain_main() # function for mountain day 
    $state = 10 
    $mountainday = MountainDay.new # call and create the class for Mountain Day 
    $mountainday.display
end
