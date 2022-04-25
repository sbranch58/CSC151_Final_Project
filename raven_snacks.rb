# file with functions if user picks manga and asks them about snacks

require 'ruby2d'
require_relative "downtown_destination.rb"
require_relative "scores_graphics.rb"


class Snacks # class that holds functions to display options if attended convocation
    def display() # display all content in this class 

        #title and heading at the top of the page
        top = Text.new('Feeling a little hungry', x: 400, y: 20, color: 'black', size: 80)
        @question = draw_multiline_text("You stay up all night reading manga and the dining halls close. You have some\nsnacks in your room, what do you eat?", x: 55, y: 120, color: 'black', size: 30, z: 30) 

        #option 1 that defines pic and txt
        @candy = Image.new('./Downtown/Images/candy.webp', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Candy", x: 320, y: 545, color: 'black', size: 25, z: 20) 

        #option 2 that defines pic and txt
        @air = Image.new('./Downtown/Images/oxygen.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Nothing, you're gonna munch on air", x: 850, y: 545, color: 'black', size: 25, z: 20)

        #option 3 that defines pic and txt
        @popcorn = Image.new('./Downtown/Images/popcorn.jpeg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Popcorn", x: 320, y: 950, color: 'black', size: 25, z: 20)

        #option 4 that defines pic and txt
        @goldfish = Image.new('./Downtown/Images/goldfish.jpeg', x: 780, y: 595, width: 600, height: 350, z: 10)
        @message4 = Text.new('Goldfish', x: 995, y: 950, color: 'black', size: 25, z: 20) 
    end

    def clicks(x, y) #define the click images function

        if @candy.contains? x, y  # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1

            txt1 = Text.new("Candy Time", x: 500, y: 20, size: 70)
            choiceimage = Image.new("./Downtown/Images/2candy.jpg", x: 130, y: 230, width: 1100, height: 650)
            response1 = draw_multiline_text("Since you have candy and decide you need sugar to finish\n\nthe series you started. You somehow eat all the candy in one\n\ngo, but keep reading and do not sleep.", x: 85, y: 110, color: 'black', size: 35, z: 30) 
            next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @air.contains? x, y  # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2

            txt2 = Text.new("Fresh Air", x: 500, y: 20, size: 70, color: 'black')
            choiceimage = Image.new("./Downtown/Images/2air.jpg", x: 130, y: 230, width: 1100, height: 650)
            response2 = draw_multiline_text("The air is so fresh, so flavorful, so airy. After\n\neating your filling air, you pass out right after.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @popcorn.contains? x, y  # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3

            txt3 = Text.new("Goldfish's Backstory", x: 450, y: 20, size: 70, color: 'black')
            choiceimage = Image.new("./Downtown/Images/2goldfish.jpg", x: 130, y: 230, width: 1100, height: 650)
            response3 = draw_multiline_text("You grab your Goldfish and the do a dramatic story\n\nof the goldfish trying to fight against a giant\n\nmonster (you) to not be eaten. They lose as\n\nyou eat your snack. You then go to bed\n\nvery late", x: 85, y: 110, color: 'black', size: 30, z: 30) 
            next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @goldfish.contains? x, y  # if option 4 has been clicked, calculate score and create new screen with info
            $score << 4

            txt3 = Text.new("mmm...Popcorn", x: 450, y: 20, size: 70, color: 'black')
            choiceimage = Image.new("./Downtown/Images/2popcorn.jpg", x: 130, y: 230, width: 1100, height: 650)
            response4 = draw_multiline_text("The smell of popcorn goes through your dorm and\n\nmakes you feel like you wanna watch a movie, but\n\nyou can't since you have classes tomorrow. You\n\nenjoy your popcorn and then go to bed at 3am", x: 50, y: 110, color: 'black', size: 35, z: 30) 
            next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
        else
            $snacks = Snacks.new # if picture is not clicked, call snack class again 
            $snacks.display
        end 
        $state = 43
        $user_major = Users.new
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@candy.contains? x, y) # if option 1 is hovered over
            @candy.width = 650
            @candy.height = 365
        else # original pic without the hover
            @candy.width = 600
            @candy.height = 350
        end
        
        if (@air.contains? x, y) # if option 2 is hovered over
            @air.width = 650
            @air.height = 365
        else # original pic without the hover
            @air.width = 600
            @air.height = 350
        end

        if (@popcorn.contains? x, y) # if option 3 is hovered over
            @popcorn.width = 650
            @popcorn.height = 365
        else # original pic without the hover
            @popcorn.width = 600
            @popcorn.height = 350
        end

        if (@goldfish.contains? x, y) # if option 4 is hovered over
            @goldfish.width = 650
            @Goldfish.height = 365
        else # original pic without the hover
            @goldfish.width = 600
            @goldfish.height = 350
        end
    end 
end 