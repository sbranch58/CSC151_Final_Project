require_relative "onephase.rb"

# call all the files in orchard options 
require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative 'HayrideInfo.rb'


class OrchardOptions  # class that holds functions to display options if attended amherst 
  def display # display all content in this class 
    background = Text.new('Welcome to the orchard!', x: 450, y: 20, color: 'black', size: 70) 
    heading1 = Text.new('We are glad you are here on this crisp fall afternoon. What do you want to do here?', x: 65, y: 100, color: 'black', size: 30)  

    # picture for farm pic
    @farm = Image.new( 
      './MountainDay/Images/farm.jpg',
      x: 50, y: 190, 
      width: 600, height: 350, 
      z: 1
      )
    # message for farm pic
    farmMessage = Text.new('Visit Animal Farm', x: 310, y: 545, color: 'black', size: 25, z: 2) 
        
    # picture for apples pic
    @pickapples = Image.new( # display the picking apple pic and txt 
        './MountainDay/Images/applepick.jpg',
        x: 780, y: 190, 
        width: 600, height: 350, 
        z: 2
      )
    # message for apple pic
    appleMessage = Text.new('Pick lots of apples', x: 990, y: 545, color: 'black', size: 25, z: 4) 
        
    # picture for picnic pic
    @picnic = Image.new( # display the picnic pic and txt 
      './MountainDay/Images/picnic.png',
       x: 50, y: 585, 
      width: 600, height: 350, 
      z: 3
    )
    # message for picnic pic
    picnicMessage = Text.new('Have a picnic!', x: 30, y: 950, color: 'black', size: 25, z: 6) 
        
    # picture for hayride pic
    @hayride = Image.new( # display the hiking pic and txt 
      './MountainDay/Images/hayriding.jpg',
      x: 780, y: 585, 
      width: 600, height: 350, 
      z: 4
    )
    # message for hayride pic
    hayrideMessage = Text.new('Go on a hayride', x: 950, y: 950, color: 'black', size: 25, z: 8)
  end
  
  def process_click(x,y) # if user clicks, call the respective files 
    if (@farm.contains? x, y) # if user clicks the farm 
      $state = 17
      $score << 1
      $farmInfo = FarmingInfo.new # call thee farming class 
      $farmInfo.display
  
    elsif (@pickapples.contains? x, y) # if user clicks the apples
      $state = 18
      $score << 2
      $appleInfo = AppleInfo.new # call the apple class 
      $appleInfo.display
    
    elsif (@picnic.contains? x, y) # if user clicks the picnic
      $state = 19
      $score << 3
      puts "clicking picnic"
      $picnicInfo = PicnicInfo.new # call the picnic class 
      $picnicInfo.display
    
    else (@hayride.contains? x, y) # if user clicks the hayride
      $state = 20
      $score << 4
      $hayrideInfo = HayrideInfo.new # call the hayride class 
      $hayrideInfo.display
    end
  end

  def over(x, y)
    if (@farm.contains? x, y)  # if user clicks, define hover
        @farm.width = 650
        @farm.height = 365
    else  # original pic without the hover
        @farm.width = 600
        @farm.height = 350
    end
    
    if (@pickapples.contains? x, y) # if user clicks, define hover
        @pickapples.width = 650
        @pickapples.height = 365
    else  # original pic without the hover
        @pickapples.width = 600
        @pickapples.height = 350
    end

    if (@picnic.contains? x, y) # if user clicks, define hover
        @picnic.width = 650
        @picnic.height = 365
    else # original pic without the hover
        @picnic.width = 600
        @picnic.height = 350
    end

    if (@hayride.contains? x, y) # if user clicks, define hover
        @hayride.width = 650
        @hayride.height = 365
    else  # original pic without the hover
        @hayride.width = 600
        @hayride.height = 350
    end
end 
end



