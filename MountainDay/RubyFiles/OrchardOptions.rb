require_relative "onephase.rb"

# call all the files in orchard options 
require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative 'HayrideInfo.rb'


set width: 1400 # width of window
set height: 1000 #height of window

class OrchardOptions
  def display
    #set title: 'Orchard Time', background: 'navy'
    background = Text.new('Welcome to the orchard!', x: 450, y: 20, color: 'black', size: 50) 
    heading1 = Text.new('We are glad you are here on this crisp fall afternoon. What do you want to do here?', x: 65, y: 80, color: 'black', size: 30)  
    
    @farm = Image.new( # display the farm pic and txt 
      './MountainDay/Images/farm.jpg',
      x: 50, y: 190, 
      width: 600, height: 350, 
      z: 1
      )
    farmMessage = Text.new('Visit Animal Farm', x: 320, y: 545, color: 'black', size: 25, z: 2) 
        
    #option 2
    @pickapples = Image.new( # display the picking apple pic and txt 
        './MountainDay/Images/applepick.jpg',
        x: 780, y: 190, 
        width: 600, height: 350, 
        z: 2
      )
    appleMessage = Text.new('Pick lots of apples', x: 990, y: 545, color: 'black', size: 25, z: 4) 
        
    #option 3
    @picnic = Image.new( # display the picnic pic and txt 
      './MountainDay/Images/picnic.png',
       x: 50, y: 585, 
      width: 600, height: 350, 
      z: 3
    )
    picnicMessage = Text.new('Have a picnic!', x: 320, y: 950, color: 'black', size: 25, z: 6) 
        
    #option 4
    @hayride = Image.new( # display the hiking pic and txt 
      './MountainDay/Images/hayriding.jpg',
      x: 780, y: 585, 
      width: 600, height: 350, 
      z: 4
    )
    hayrideMessage = Text.new('Go on a hayride', x: 950, y: 950, color: 'black', size: 25, z: 8)

    #scene = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
  end
  
  #-------------------------------------------------------------------
  def process_click(x,y) # if user clicks, call the respective files 
    if (@farm.contains? x, y)
      $state = 17
      $score << 1
      $farmInfo = FarmingInfo.new
      $farmInfo.display
  
    elsif (@pickapples.contains? x, y)
      $state = 18
      $score << 2
      $appleInfo = AppleInfo.new
      $appleInfo.display
    
    elsif (@picnic.contains? x, y)
      # $picnicInfo = PicnicInfo.new
      # $picnicInfo.display
      $state = 19
      $score << 3
      puts "clicking picnic"
      $picnicInfo = PicnicInfo.new
      $picnicInfo.display
    
    else (@hayride.contains? x, y)
      $state = 20
      $score << 4
      $hayrideInfo = HayrideInfo.new
      $hayrideInfo.display
    end
  end

  def over(x, y)
    if (@farm.contains? x, y) 
        # $hover_state = 1
        # @convocation.color = "#56BBF1"
        @farm.width = 650
        @farm.height = 365
        # @image_border.add
        # puts "changing @convocation when hovered "
    else 
        @farm.width = 600
        @farm.height = 350
        # @image_border.remove
    end
    
    if (@pickapples.contains? x, y) 
        # $hover_state = 1
        # @convocation.color = "#56BBF1"
        @pickapples.width = 650
        @pickapples.height = 365
        # @image_border.add
        # puts "changing @convocation when hovered "
    else 
        @pickapples.width = 600
        @pickapples.height = 350
        # @image_border.remove
    end

    if (@picnic.contains? x, y) 
        # $hover_state = 1
        # @convocation.color = "#56BBF1"
        @picnic.width = 650
        @picnic.height = 365
        # @image_border.add
        # puts "changing @convocation when hovered "
    else 
        @picnic.width = 600
        @picnic.height = 350
        # @image_border.remove
    end

    if (@hayride.contains? x, y) 
        # $hover_state = 1
        # @convocation.color = "#56BBF1"
        @hayride.width = 650
        @hayride.height = 365
        # @image_border.add
        # puts "changing @convocation when hovered "
    else 
        @hayride.width = 600
        @hayride.height = 350
        # @image_border.remove
    end
end 
end



