require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"


class MountainDay  # class that holds functions to display options for mountain day 
  def display # display all content in this class 

    #title and heading at the top of the page
    heading1 = Text.new('Ringing the bells!', x: 180, y: 10, size: 50) 
    heading2 = Text.new("You wake up to the sound of ringing bells...its Mountain Day! What are your plans on this glorious day?", x: 65, y: 50, color: 'black', size: 20)  
    
    # Defines the hiking pic 
    @hiking = Image.new(
      './MountainDay/Images/hiking.png',
      x: 30, y: 85, 
      width: 300, height: 150, 
      z: 1
    )
    # message for the hiking option 
    hikingMessage = Text.new('Hiking', x: 120, y: 250, color: 'black', size: 20, z: 2) 

    # Defines the baking pic 
    @baking = Image.new(
      './MountainDay/Images/bakingapples.jpg',
      x: 380, y: 85, 
      width: 300, height: 150, 
      z: 3  
    ) 
    # message for the baking option 
    bakingMessage = Text.new('Baking', x: 460, y: 250, color: 'black', size: 20, z: 4) 

    # Defines the orchard pic 
    @orchard = Image.new(
      './MountainDay/Images/orchard.jpg',
      x: 30, y: 295, 
      width: 300, height: 150, 
      z: 5
    )
    # message for the orchard options 
    orchardMessage = Text.new('Orchard', x: 120, y: 460, color: 'black', size: 20, z: 6) 

    # Defines the campus pic 
    @campus = Image.new(
      './MountainDay/Images/campus.png',
      x: 380, y: 295, 
      width: 300, height: 150, 
      z: 7
    )
    #message for the campus options 
    campusMessage = Text.new('Campus Activities', x: 460, y: 460, color: 'black', size: 20, z: 8) 
  end
end

#------------------------------------------------------------------------
def process_click(x,y) #define the click images function
  if (@baking.contains? x, y) # if baking image is clicked 
    $state = 11
    $bakingOptions = BakingOptions.new # define the baking class 
    $bakingOptions.display
  else (@orchard.contains? x, y) # if orchard image is clicked 
    orchardOptions = OrchardOptions.new # define the orchard class 
    orchardOptions.display
  end
end