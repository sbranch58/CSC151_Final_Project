require_relative "onephase.rb"

# call all the files with campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative "SCMAInfo.rb"

set width: 700 # width of window
set height: 500 #height of window

#-------------------------------------------

class CampusOptions 
    def display
        #set title: 'On Campus Activities', background: 'navy'
        background = Text.new('On Campus Activities', x: 450, y: 20, color: 'black', size: 50) 
        heading1 = Text.new('You decided to enjoy some on campus activities with friends. What will you do?', x: 65, y: 80, color: 'black', size: 30)  
        
        #option1 paradise
        @art = Image.new(
            './MountainDay/Images/paradise.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        artMessage = Text.new('Art Crafts', x: 320, y: 545, color: 'black', size: 25, z: 2) 
        
        #option 2 holyoke
        @downtown = Image.new(
            './MountainDay/Images/holyoke.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 2  
        )
        downtownMessage = Text.new('Explore downtown', x: 990, y: 545, color: 'black', size: 25, z: 4) 
        
        #option 3 biking 
        @biking = Image.new(
            './MountainDay/Images/biking.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 3
        )
        bikingMessage = Text.new('Go biking', x: 320, y: 950, color: 'black', size: 25, z: 6) 

        #option 4 scma 
        @SCMA= Image.new(
            './MountainDay/Images/scma.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 4
        )
        scmaMessage = Text.new('Visit SCMA', x: 950, y: 950, color: 'black', size: 25, z: 8) 
        #scene = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
    
    #-------------------------------------------------------------------
    def process_click(x,y) # if user clicks on the respective picture, call its file 
        if (@art.contains? x, y)
            $score << 1
            $state = 27
            $artInfo = ArtInfo.new
            $artInfo.display
  
        elsif (@downtown.contains? x, y)
            $state = 28
            $score << 2
            $downtownInfo = DowntownInfo.new
            $downtownInfo.display
    
        elsif (@biking.contains? x, y)
            $state = 29
            $score << 3
            $bikeInfo = BikeInfo.new
            $bikeInfo.display
    
        elsif (@SCMA.contains? x, y)
            $state = 30
            $score << 4
            $SCMAInfo = SCMAInfo.new
            $SCMAInfo.display
        end
    end

    def over(x, y)
        if (@art.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @art.width = 650
            @art.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @art.width = 600
            @art.height = 350
            # @image_border.remove
        end
        
        if (@downtown.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @downtown.width = 650
            @downtown.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @downtown.width = 600
            @downtown.height = 350
            # @image_border.remove
        end

        if (@biking.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @biking.width = 650
            @biking.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @biking.width = 600
            @biking.height = 350
            # @image_border.remove
        end

        if (@SCMA.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @SCMA.width = 650
            @SCMA.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @SCMA.width = 600
            @SCMA.height = 350
            # @image_border.remove
        end
    end 
end
