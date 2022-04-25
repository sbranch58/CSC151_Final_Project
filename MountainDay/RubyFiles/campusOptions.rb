require_relative "onephase.rb"

# call all the files with campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative "SCMAInfo.rb"

class CampusOptions # class that holds functions to display options for campus 
    def display # display all content in this class 

        #title and heading at the top of the page
        background = Text.new('On Campus Activities', x: 430, y: 20, color: 'black', size: 70) 
        heading1 = Text.new('You decided to enjoy some on campus activities with friends. What will you do?', x: 65, y: 100, color: 'black', size: 30)  
        
        # option 1 that defines pic and txt
        @art = Image.new(  # instance variable to access this attribute
            './MountainDay/Images/art.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        # message for art 
        artMessage = Text.new('Art Crafts', x: 320, y: 545, color: 'black', size: 25, z: 2) 
        
        #option 2 that defines pic and txt 
        @downtown = Image.new( # instance variable to access this attribute
            './MountainDay/Images/downtown.jpg', # instance variable to access this attribute
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 2  
        )
        # message for downtown
        downtownMessage = Text.new('Explore downtown', x: 990, y: 545, color: 'black', size: 25, z: 4) 
        
        #option 3 biking that defines pic and txt 
        @biking = Image.new( # instance variable to access this attribute
            './MountainDay/Images/biking.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 3
        )
        # message for biking 
        bikingMessage = Text.new('Go biking', x: 320, y: 950, color: 'black', size: 25, z: 6) 

        #option 4 scma that defines pic and txt 
        @SCMA= Image.new( # instance variable to access this attribute
            './MountainDay/Images/scma.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 4
        )
        # message for scma
        scmaMessage = Text.new('Visit SCMA', x: 950, y: 950, color: 'black', size: 25, z: 8) 
    end
    
    #-------------------------------------------------------------------
    def process_click(x,y) # if user clicks on the respective picture, call its file 
        if (@art.contains? x, y) # if art is clicked 
            $score << 1
            $state = 27
            $artInfo = ArtInfo.new # create new class
            $artInfo.display
  
        elsif (@downtown.contains? x, y) # if downtown is clicked 
            $state = 28
            $score << 2
            $downtownInfo = DowntownInfo.new # create new class 
            $downtownInfo.display
    
        elsif (@biking.contains? x, y) # if biking is clicked 
            $state = 29
            $score << 3
            $bikeInfo = BikeInfo.new # create new class 
            $bikeInfo.display
    
        elsif (@SCMA.contains? x, y) # if SCMA is clicked 
            $state = 30
            $score << 4
            $SCMAInfo = SCMAInfo.new # create new class 
            $SCMAInfo.display
        else 
            campusOptions = CampusOptions.new # make sure that the user cannot click outside of images 
            campusOptions.display
        end
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@art.contains? x, y)  # if pic is hovered over
            @art.width = 650
            @art.height = 365
        else # original pic without the hover
            @art.width = 600 
            @art.height = 350
        end
        
        if (@downtown.contains? x, y)  # if pic is hovered over
            @downtown.width = 650
            @downtown.height = 365
        else # original pic without the hover
            @downtown.width = 600
            @downtown.height = 350
        end

        if (@biking.contains? x, y) # if pic is hovered over
            @biking.width = 650
            @biking.height = 365
        else  # original pic without the hover
            @biking.width = 600
            @biking.height = 350
        end

        if (@SCMA.contains? x, y)  # if pic is hovered over
            @SCMA.width = 650
            @SCMA.height = 365
        else # original pic without the hover
            @SCMA.width = 600
            @SCMA.height = 350
        end
    end 
end
