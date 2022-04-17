require 'ruby2d'
require_relative "downtown_destination.rb"
require_relative "scores_graphics.rb"


class Snacks
    def display()
        @question = Text.new("You stay up all night reading manga and the dining halls closed. You have some snacks in your room, what do you eat?", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Images/candy.webp', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Candy", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        # @response1 = draw_multiline_text("Since you have candy and decide you need sugar to stay up to keep up your intense research of the series going. \nYou somehow eat all of the candy in one go, but keep falling down the rabbit hole of manga, and do not sleep.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response1.remove

        @choice2 = Image.new('./Images/oxygen.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Nothing, you're gonna munch on the best snack: air", x: 400, y: 360, color: 'black', size: 25, z: 20)
        @response2 = Text.new("The air is so fresh, so flavorful, so airy. After eating your filling air, you pass out right after.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response2.remove

        @choice3 = Image.new('./Images/popcorn.jpeg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Popcorn", x: 55, y: 560, color: 'black', size: 25, z: 20)
        # @response3 = draw_multiline_text("You grab your Goldfish and the do a dramatic story of the goldfish trying to fight against the giant monster (you) to not be eaten. \nThey tragically lose as you eat your snack. You then go to bed at 4am because your story took 2 hours to tell.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        #@response3.remove

        @choice4 = Image.new('./Images/goldfish.jpeg', x: 380, y: 395, width: 300, height: 150, z: 10)
        @message4 = Text.new('Goldfish', x: 400, y: 560, color: 'black', size: 25, z: 20) 
        # @response4 = draw_multiline_text("You pop your popcorn and the smell goes through your dorm and makes you feel like you wanna watch a movie, \nbut you can't since you have classes tomorrow. You enjoy your popcorn and then go to bed at 3am.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response4.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1 = draw_multiline_text("Since you have candy and decide you need sugar to stay up to keep up your intense research of the series going. \nYou somehow eat all of the candy in one go, but keep falling down the rabbit hole of manga, and do not sleep.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            # @response1.add 
        elsif @choice2.contains? x, y 
            $score << 2
            @response2.add 
        elsif @choice3.contains? x, y 
            $score << 3
            @response3 = draw_multiline_text("You grab your Goldfish and the do a dramatic story of the goldfish trying to fight against the giant monster (you) to not be eaten. \nThey tragically lose as you eat your snack. You then go to bed at 4am because your story took 2 hours to tell.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            # @response3.add
        elsif @choice4.contains? x, y 
            $score << 4
            @response4 = draw_multiline_text("You pop your popcorn and the smell goes through your dorm and makes you feel like you wanna watch a movie, \nbut you can't since you have classes tomorrow. You enjoy your popcorn and then go to bed at 3am.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            # @response4.add
        else
            # when you don't click on an image it 
            $run_again = Snacks.new
            $run_again.display
        end 
        $state = 13
        $user_major = Users.new
        # $user_major.display
    end
end 
# show