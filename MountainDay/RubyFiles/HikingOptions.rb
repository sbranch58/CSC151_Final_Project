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
        background = Text.new('Explore the great outdoors', x: 450, y: 20, color: 'black', size: 50) 
        heading1 = Text.new('You got your hiking boats, backpack, and trail mix...time to explore the outdoors. Where will you go?', x: 65, y: 80, color: 'black', size: 30)  
        
        #option1 paradise 
        @paradise = Image.new(
            './MountainDay/Images/paradise.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        paradiseMessage = Text.new('Paradise Pond', x: 320, y: 545, color: 'black', size: 25, z: 2) 
        
        #option 2 holyoke
        @holyoke = Image.new(
            './MountainDay/Images/holyoke.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 2  
        )
        holyokeMessage = Text.new('Holyoke State Park', x: 990, y: 545, color: 'black', size: 25, z: 4) 
        
        #option 3 amherst
        @amherst = Image.new(
            './MountainDay/Images/amherst.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 3
        )
        amherstMessage = Text.new('Robert Frost Trail', x: 320, y: 950, color: 'black', size: 25, z: 6) 

        #option 4 mountain
        @mountain= Image.new(
            './MountainDay/Images/monument.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 4
        )
        mountainMessage = Text.new('Monument Mountain', x: 950, y: 950, color: 'black', size: 25, z: 8) 
        #scene = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
    
    #-------------------------------------------------------------------
    def process_click(x,y)  # if the user clicks, call the respective file 
        if (@paradise.contains? x, y)
            $state = 22
            $score << 1
            $paradiseInfo = ParadiseInfo.new
            $paradiseInfo.display
  
        elsif (@amherst.contains? x, y)
            $state = 23
            $score << 2
            $amherstInfo = AmherstInfo.new
            $amherstInfo.display
    
        elsif (@holyoke.contains? x, y)
            $state = 24
            $score << 3
            $holyokeInfo = HolyokeInfo.new
            $holyokeInfo.display
    
        elsif (@mountain.contains? x, y)
            $state = 25
            $score << 4
            $mountainInfo = MountainInfo.new
            $mountainInfo.display
        end
    end

    def over(x, y)
        if (@paradise.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @paradise.width = 650
            @paradise.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @paradise.width = 600
            @paradise.height = 350
            # @image_border.remove
        end
        
        if (@amherst.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @amherst.width = 650
            @amherst.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @amherst.width = 600
            @amherst.height = 350
            # @image_border.remove
        end

        if (@holyoke.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @holyoke.width = 650
            @@holyoke.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @holyoke.width = 600
            @holyoke.height = 350
            # @image_border.remove
        end

        if (@mountain.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @mountain.width = 650
            @mountain.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @mountain.width = 600
            @mountain.height = 350
            # @image_border.remove
        end
    end 
end