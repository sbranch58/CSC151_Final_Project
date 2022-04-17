require 'ruby2d'

set width: 700 # width of window
set height: 500 #height of window
# first_background(color: 'blue')

set title: 'Hiking', background: 'navy'

background = Text.new('Exploring the outdoors', x: 180, y: 10, size: 30) 
heading1 = Text.new('You got your hiking boats, backpack, and trail mix...time to explore the outdoors. Where will you go?', x: 65, y: 50, color: 'white', size: 20)  

#option 1

box1 = Image.new(
    'applepie.jpg',
    x: 30, y: 85, 
    width: 300, height: 150, 
    z: 1
)
message1 = Text.new('Paradise Pond', x: 120, y: 250, color: 'white', size: 20, z: 2) 

def paradisePond()
    #image
    puts "The paradise pond has a scenario woodland path...afterwards let's go kayaking"
    puts "Click anywhere to leave page"
    # if :mouse do |event|
    #     puts event
    #     #link to Downtown
    #     #Downtown()
    # end
end


#option 2
box2 = Image.new(
    'applecrumble.png',
    x: 380, y: 85, 
    width: 300, height: 150, 
    z: 3  
)
message3 = Text.new('Holyoke State Park', x: 460, y: 250, color: 'white', size: 20, z: 4) 

def hikingHolyoke()
    #image
    puts "30 miles of blazed trails...Holyoke State Park is the place to hike. You end up forgetting your boots, but your friend has a extra pair"
    puts "Click anywhere to leave page"
    # if :mouse do |event|
    #     puts event
    #     #link to Downtown
    #     #Downtown()
    # end
end


# #option 3

box3 = Image.new(
    'appletart.jpg',
    x: 30, y: 295, 
    width: 300, height: 150, 
    z: 5
)
message5 = Text.new('Robert Frost Trail', x: 120, y: 460, color: 'white', size: 20, z: 6) 

def hikingAmherst()
    #image
    puts "A popular trail for birding, hiking, and mountain biking, visit the beauty at Amherst's Robert Frost Trail"
    puts "Click anywhere to leave page"
    # if :mouse do |event|
    #     puts event
    #     #link to Downtown
    #     #Downtown()
    # end
end


box4 = Image.new(
    'appledonut.jpg',
    x: 380, y: 295, 
    width: 300, height: 150, 
    z: 7
)
message6 = Text.new('Monument Mountain', x: 460, y: 460, color: 'white', size: 20, z: 8) 

def monumentMountain()
    #image
    puts "Monument Mountain has been sacred to the Mohican people and has long inspired works of art and literature. Come Visit!"
    puts "Click anywhere to leave page"
    # if :mouse do |event|
    #     puts event
    #     #link to Downtown
    #     #Downtown()
    # end
end

#-----------------------------------------------------------------------------------
on :mouse_down do |event|
    if (box1 = event) #switch statement for the options
        puts "Yes"
        paradisePond()
    elsif (box2 = event) 
        puts "No"
        hikingHolyoke()
    elsif (box3 = event) 
        puts "Maybe"
        hikingAmherst()
    else (box4 = event)
        puts "Go"
        monumentMountain()
    end
end


show


on :mouse_down do |event|
    if (ruby.contains? event.x, event.y) && tick % 300 <= 60
      hits+= 1
    end
end
