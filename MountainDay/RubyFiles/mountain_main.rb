require 'ruby2d' # call all the files in the mountainday scenario 

require_relative "onephase.rb"

#------------------------------------
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
$score = [] # tracks the score for the determined major 


def mountain_main()
    set width: 1400 # width of window
    set height: 1000 #height of window
    set background: "#069A8E"

    $state = 1 # defines the state of each option
    mountainday = MountainDay.new
    mountainday.display
    # puts ('mountainday')

    on :mouse_down do |event| # if user clicks, then call one of these switch statements 
        case $state
        # for mountain day
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
            # puts "before clear"
            clear
            # puts "is $picnicInfo being made? "
            $picnicInfo.process_click(event.x, event.y)
        when 11
            clear
            $hayrideInfo.process_click(event.x, event.y)
        when 12
            clear
            $hikingOptions.process_click(event.x, event.y)
        when 13
            clear
            # $amherstInfo.process_click(event.x, event.y)
            $paradiseInfo.process_click(event.x, event.y)
        when 14
            clear
            # $holyokeInfo.process_click(event.x, event.y)
            $amherstInfo.process_click(event.x, event.y)
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

        #for downtown
        # for Destination: ask user where they want to go 
        when 22
            clear
            puts "running clicks for $start"
            $start.clicks(event.x, event.y)
        # calls HerrellFlavor: what ice cream flavor the user wants
        when 23
            clear
            puts "running clicks for $flavor"
            $flavor.clicks(event.x, event.y)
        # calls HerrellTopping: what ice cream flavor the user wants
        when 26
            clear 
            puts "running clicks for $topping"
            $toppings.clicks(event.x, event.y)
        # calls BobaFlavor: what boba tea flavor the user wants
        when 24
            clear
            puts "running clicks for $boba"
            $boba.clicks(event.x, event.y)
        # calls BobaSweetmess: how sweet they want their baba
        when 29
            clear
            puts "running clicks for $sweetness"
            $sweetness.clicks(event.x, event.y)
        # calls Bookstore: what book does the user want 
        when 25
            clear
            puts "running clicks for $book"
            $book.clicks(event.x, event.y)
        # calls Snacks: if user picks manga what snack will they eat 
        when 30
            clear
            puts "running clicks for $snack"
            $snacks.clicks(event.x, event.y)
        # calls Rock: gives user a random rack that they are
        when 31
            clear
            puts "running clicks for $rock"
            $rock.clicks()
        # calls History: if user picks a history book 
        when 32
            clear
            puts "running clicks for $history"
            $history.clicks(event.x, event.y)
        # calls Picture: if user picks a picture book
        when 33
            clear
            puts "running clicks for $picture"
            $picture.clicks(event.x, event.y)
        # calls Users: finds the users major based on their average score
        when 34
            clear
            puts "running clicks for $user_major"
            $user_major.clicks()
        end
    end
end

#mountainday()
#show
  
#show # only need show in main
