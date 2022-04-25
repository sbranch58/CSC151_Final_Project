require_relative "onephase.rb"

# call all the files in the hiking options 
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"

set width: 700 # width of window
set height: 500 #height of window

#-------------------------------------------

class HikingOptions  # class that holds functions to display options for hiking 
    def display # display all content in this class 

        #title and heading at the top of the page
        background = Text.new('Explore the great outdoors', x: 200, y: 20, color: 'black', size: 75) 
        heading1 = draw_multiline_text('Time to explore the outdoors. Where will you go?', x: 150, y: 110, color: 'black', size: 40)  
        
        #option1 paradise that defines the pic and txt 
        @paradise = Image.new(
            './MountainDay/Images/paradise.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        paradiseMessage = Text.new('Paradise Pond', x: 305, y: 545, color: 'black', size: 25, z: 2) 
        
        #option 2 mountain that defines the pic and txt 
        @holyoke = Image.new(
            './MountainDay/Images/holyoke.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 2  
        )
        holyokeMessage = Text.new('Holyoke State Park', x: 990, y: 545, color: 'black', size: 25, z: 4) 
        
        #option 3 amherst that defines the pic and txt
        @amherst = Image.new(
            './MountainDay/Images/amherst.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 3
        )
        amherstMessage = Text.new('Robert Frost Trail', x: 305, y: 950, color: 'black', size: 25, z: 6) 

        #option 4 mountain that defines the pic and txt
        @mountain= Image.new(
            './MountainDay/Images/monument.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 4
        )
        mountainMessage = Text.new('Monument Mountain', x: 950, y: 950, color: 'black', size: 25, z: 8) 
    end
    
    #-------------------------------------------------------------------
    def process_click(x,y)  # if the user clicks, call the respective file 
        if (@paradise.contains? x, y) # if pic has been clicked 
            $state = 22
            $score << 1
            $paradiseInfo = ParadiseInfo.new # create a new paradise class 
            $paradiseInfo.display
  
        elsif (@amherst.contains? x, y)  # if pic has been clicked 
            $state = 23
            $score << 2
            $amherstInfo = AmherstInfo.new # create a new amherst class 
            $amherstInfo.display
    
        elsif (@holyoke.contains? x, y)  # if pic has been clicked 
            $state = 24
            $score << 3
            $holyokeInfo = HolyokeInfo.new # create a new holyoke class 
            $holyokeInfo.display
    
        elsif (@mountain.contains? x, y)  # if pic has been clicked 
            $state = 25
            $score << 4
            $mountainInfo = MountainInfo.new
            $mountainInfo.display
        else
            $hikingOptions = HikingOptions.new # prevents the clicking outside of the pic 
            $hikingOptions.display
        end
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@paradise.contains? x, y)  # if option 1 is hovered over
            @paradise.width = 650
            @paradise.height = 365
        else # original pic without the hover
            @paradise.width = 600
            @paradise.height = 350
        end
        
        if (@amherst.contains? x, y)  # if option 2 is hovered over
            @amherst.width = 650
            @amherst.height = 365
        else # original pic without the hover
            @amherst.width = 600
            @amherst.height = 350
        end

        if (@holyoke.contains? x, y)  # if option 3 is hovered over
            @holyoke.width = 650
            @holyoke.height = 365
        else # original pic without the hover
            @holyoke.width = 600
            @holyoke.height = 350
        end

        if (@mountain.contains? x, y)  # if option 4 is hovered over
            @mountain.width = 650
            @mountain.height = 365
        else # original pic without the hover
            @mountain.width = 600
            @mountain.height = 350
        end
    end 
end
