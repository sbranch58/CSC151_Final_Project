require_relative "onephase.rb"

# call all the files in the hiking options 
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"

set width: 700 # width of window
set height: 500 #height of window

#-------------------------------------------

class HikingOptions 
    def display
        #set title: 'Hiking Time', background: 'navy'
        background = Text.new('Explore the great outdoors', x: 450, y: 20, size: 50) 
        heading1 = Text.new('You got your hiking boats, backpack, and trail mix...time to explore the outdoors. Where will you go?', x: 65, y: 80, color: 'white', size: 30)  
        
        #option1 paradise 
        @paradise = Image.new(
            './MountainDay/Images/paradise.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        paradiseMessage = Text.new('Paradise Pond', x: 320, y: 545, color: 'white', size: 25, z: 2) 
        
        #option 2 holyoke
        @holyoke = Image.new(
            './MountainDay/Images/holyoke.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 2  
        )
        holyokeMessage = Text.new('Holyoke State Park', x: 990, y: 545, color: 'white', size: 25, z: 4) 
        
        #option 3 amherst
        @amherst = Image.new(
            './MountainDay/Images/amherst.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 3
        )
        amherstMessage = Text.new('Robert Frost Trail', x: 320, y: 950, color: 'white', size: 25, z: 6) 

        #option 4 mountain
        @mountain= Image.new(
            './MountainDay/Images/monument.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 4
        )
        mountainMessage = Text.new('Monument Mountain', x: 950, y: 950, color: 'white', size: 25, z: 8) 
        #scene = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
    
    #-------------------------------------------------------------------
    def process_click(x,y)  # if the user clicks, call the respective file 
        if (@paradise.contains? x, y)
            $state = 13
            $score << 1
            $paradiseInfo = ParadiseInfo.new
            $paradiseInfo.display
  
        elsif (@amherst.contains? x, y)
            $state = 14
            $score << 2
            $amherstInfo = AmherstInfo.new
            $amherstInfo.display
    
        elsif (@holyoke.contains? x, y)
            $state = 15
            $score << 3
            $holyokeInfo = HolyokeInfo.new
            $holyokeInfo.display
    
        else (@mountain.contains? x, y)
            $state = 16
            $score << 4
            $mountainInfo = MountainInfo.new
            $mountainInfo.display
        end
    end
end
