
#THIS IS NOT THE RIGHT FILE
require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"


class MountainDay
  def display

    heading1 = Text.new('Ringing the bells!', x: 180, y: 10, size: 30) 
    heading2 = Text.new("You wake up to the sound of ringing bells...its Mountain Day! What are your plans on this glorious day? Pick a number", x: 65, y: 50, color: 'white', size: 20)  

    # option 1
    @hiking = Image.new(
      './MountainDay/Images/hiking.png',
      x: 30, y: 85, 
      width: 300, height: 150, 
      z: 1
    )
    hikingMessage = Text.new('Hiking', x: 120, y: 250, color: 'white', size: 20, z: 2) 

    # option 2
    @baking = Image.new(
      './MountainDay/Images/bakingapples.jpg',
      x: 380, y: 85, 
      width: 300, height: 150, 
      z: 3  
    )
    bakingMessage = Text.new('Baking', x: 460, y: 250, color: 'white', size: 20, z: 4) 

    # option 3
    @orchard = Image.new(
      './MountainDay/Images/orchard.jpg',
      x: 30, y: 295, 
      width: 300, height: 150, 
      z: 5
    )
    orchardMessage = Text.new('Orchard', x: 120, y: 460, color: 'white', size: 20, z: 6) 

    # option 4
    @campus = Image.new(
      './MountainDay/Images/campus.png',
      x: 380, y: 295, 
      width: 300, height: 150, 
      z: 7
    )
    campusMessage = Text.new('Campus Activities', x: 460, y: 460, color: 'white', size: 20, z: 8) 
  end
end

#------------------------------------------------------------------------
def process_click(x,y)
  if (@baking.contains? x, y) #!!!!!!!!!!!!!!!!!!!!!!!!
    $state = 2
    $bakingOptions = BakingOptions.new
    $bakingOptions.display
  else (@orchard.contains? x, y)
    orchardOptions = OrchardOptions.new
    orchardOptions.display
  end
end
  # elsif (@hiking.contains? x, y)
  #   $state = 2
  #   $hikingOptions = HikingOptions.new
  #   $hikingOptions.display
  
  # elsif (@orchard.contains? x, y)
  #   $state = 8
  #   $orchardOptions = OrchardOptions.new
  #   $orchardOptions.display
  
  # else (@campus.contains? x, y)
  #   $state = 9
  #   $campusOptions = CampusOptions.new
  #   $campusOptions.display


# on :mouse_down do |event|
#   case $state
#   when 1
#     baking()
#     clear
#     baking.process_click(event.x, event.y)
#   when 2
#     clear
#     $orchard.process_click(event.x, event.y)
#   when 3
#     clear
#     $campus.process_click(event.x, event.y)
#   when 4
#     clear
#     $hiking.process_click(event.x, event.y)
#   end
# end