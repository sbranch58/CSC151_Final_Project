require 'ruby2d'

require_relative "onephase.rb"

require_relative "BakingOptions.rb"

require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"
require_relative "DonutInfo.rb"

#------------------------------------
require_relative "OrchardOptions.rb"

require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative 'HayrideInfo.rb'

#------------------------------------

require_relative "HikingOptions.rb"

require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
#------------------------------------

require_relative "campusOptions.rb"

require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
#------------------------------------


set width: 1400 # width of window
set height: 1000 #height of window

$state = 1
mountainday = MountainDay.new
mountainday.display

#score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)


on :mouse_down do |event|
    case $state
    when 1
        clear
        mountainday.process_click(event.x, event.y)
    when 2
        clear
        $bakingOptions.process_click(event.x, event.y)
    when 3
        clear
        $pieInfo.process_click(event.x, event.y)
    when 4
        clear
        $crumbleInfo.process_click(event.x, event.y)
    when 5
        clear
        $tartInfo.process_click(event.x, event.y)
    when 6
        clear
        $donutInfo.process_click(event.x, event.y)
    when 7
        clear
        $orchardOptions.process_click(event.x, event.y)
    when 8
        clear
        $farmInfo.process_click(event.x, event.y)
    when 9
        clear
        $appleInfo.process_click(event.x, event.y)
    when 10
        clear
        $picnicInfo.process_click(event.x, event.y)
    when 11
        clear
        $hayrideInfo.process_click(event.x, event.y)
    when 12
        clear
        $hikingOptions.process_click(event.x, event.y)
    when 13
        clear
        $amherstInfo.process_click(event.x, event.y)
    when 14
        clear
        $holyokeInfo.process_click(event.x, event.y)
    when 15
        clear
        $paradiseInfo.process_click(event.x, event.y)
    when 16
        clear
        $mountainInfo.process_click(event.x, event.y)
    when 17
        clear
        $campusOptions.process_click(event.x, event.y)
    when 18
        clear
        $artInfo.process_click(event.x, event.y)
    when 19
        clear
        $downtownInfo.process_click(event.x, event.y)
    when 20
        clear
        $bikeInfo.process_click(event.x, event.y)
    when 21
        clear
        $SCMAInfo.process_click(event.x, event.y)
    end
end
  
show
    # when 2
    #     clear
    #     $hikingOptions.process_click(event.x, event.y)
    # when 4
    #     clear
    #     $orchardOptions.process_click(event.x, event.y)
    # when 5
    #     clear
    #     $campusOptions.process_click(event.x, event.y)