require 'ruby2d'

require "./Convocation2/RubyFiles/ConvocationMain.rb" # call this file after this game element

# SETUP -------------------------------------------------------------------------------------------------------------------------------------
set width: 1400 # width of window
set height: 1000 #height of window
song = Music.new('Soaring.mp3') #credits at the bottom
song.loop = true # loop through the song when completed 
song.play

tick = 0

#COVER PAGE ------------------------------------------------------------------------------------------------------------------------------
set title: 'A Smith Journey' # sets the window for the entire game 

cover_background = Image.new('finalmajors.jpg', z: 1) # initial cover page until the user clicks

topTitle = Text.new('A Smith Journey', x: 350, y: 80, size: 100, color: "black", z: 2) #txt for the cover page
message = Text.new('Curious about your prospective major?', x: 70, y: 750, color: 'black', size: 65, z: 4) 
message1 = Text.new('Take this quiz to find the truth!', x: 170, y: 820, color: 'black', size: 65, z: 5)
message2 = Text.new('Click to begin', x: 550, y: 900, color: 'black', size: 45, z: 6)
game_started = false #unless game has started, stay on cover page

# PART A: BASICS ------------------------------------------------------------------------------------------------------------------------
hero = Sprite.new(  # drawing of the character with coordinates
  'Flapbird.png',
  width: 256,
  height: 256,
  clip_width: 706, 
  x: 80,
  y: 680,
  time: 300, #
  loop: true,
  z: 7
)
hero.remove # remove the bird until added after cover page

background1 = Image.new('background.jpg', x: 0, y: 0)# set image for new background after click
background1.remove # remove to prevent intervention with the cover page

on :mouse_down do |event|
  if !game_started
    game_started = true # game starts because user press down, run all code 
    cover_background.remove # remove everything associated with cover 
    topTitle.remove
    message.remove
    message1.remove
    message2.remove
    background1.add #now add the second background
    hero.add  #now add the character 
    Text.new(
      'Welcome to Smith!', # new txt after initial click
      x: 420,
      y: 80,
      width: 40,
      height: 15,
      size: 70,
      color: 'black',
      z: 7
    ) 
    @button = Rectangle.new( #button to start the quiz 
      x: 550, y: 820,
      width: 380, height: 80,
      color: 'teal',
      z: 8
    )
    beginClick = Text.new('Click to begin quiz', x: 570, y: 825, color: 'black', size: 35, z: 9) # text on top of the button
  elsif (@button.contains? event.x, event.y) 
    clear # if button is clicked, clear everything on this screen and call convocation 
    convocation_main()
  end
end

update do # update the screen and make the bird interactive
    if game_started == true
        tick += 1 # tick count for looping 
        hero.y = Math.sin(tick/15) *150 + 380 # using math to measure the bird's position on screen and movement over sin

        background1.x -=2.5 # make the background move as bird flys 
    end
end

show