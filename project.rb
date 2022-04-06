=begin
What to do next 
    1. look at the raven function and make the if else looks functions so they can be called again if the user does not input the right number 
    2. For boba function 
        - add a toppings function  
        - ask a sugar level function
        - try using switch statements to see how that goes
    3. for ice cream function
        - make a cone or cup function
        - make a toppings option 
        - use switch and case satements 
    4. test out code
        - look at $scores to make sure values are added 
=end


=begin
this is the global variable for holding the "scores" bt is to keep track of the players choices throughout the game 
so at the end it can calculate the average score of the user to give them a major choice
=end
$score = []

# class for the day downtown event with the functions needed to run the event inside
class Downtown 
    def raven()
        print "You walk into Ravens bookstore and you're greeted with an array of books. "
        print "What book do you plan to buy? \n"
        print "1. Manga \n2. A history book going in indepth detail on the history of the French Revolution \n3. A rock guide \n4. A picture book \n"
        choice = gets.chomp
        choice = choice.to_i 
        if choice == 1 
            $score << choice
            print "You've acquired a new manga! You now go back to your dorm to read the newest manga you've collected and spend the whole day eating it. \
            but it is now dinner time and you are only half way done, what do you do? \n"
            print "1. Go to the dining hall \n2. Keep reading \n"
            choice = gets.chomp
            choice = choice.to_i
            if choice == 1
                $score << choice
                print "You go to the dining hall and eat a \"nice\" dinner. You're able to go back to your room and get a good rest for classes toromorrow. \n"
            elsif choice == 2
                $score << choice
                print "Oh no! You completely missed dinner because after reading the manga you started to go into a vicious fan cycle and fall down the \
                rabbit hole of a new series. There are only snacks left in your room, but what snack do you eat. \n"
                print "1. Popcorn \n2. Goldfish \n3. Sour Patch Kids \n4. Nothing, you're gonna munch on the best snack, air \n"
                choice = gets.chomp
                choice = choice.to_i
                if choice == 1 
                    $score << choice
                    print "You pop your popcorn and the smell goes through your dorm and makes you feel like you wanna watch a movie, but you cant since \
                    you have classes tomorrow. You enjoy your popcorn and then go to bed at 3am. \n"
                    # puts "the value of choice1 is: #{choice}" 
                elsif choice == 2
                    $score << choice 
                    print "You grab your goldfish and the do a dramatic story of the goldfish trying to fight against the giant monster (you) to not be eaten. \
                    They tragically lose as you eat your snack. You then go to bed at 4am because your story took 2 more hours. \n"
                elsif choice == 3
                    $score << choice 
                    print "Since you have candy and decide you need sugar to stay up to keep up your intense research of the series. You somehow eat all of the candy \
                    in one go, but keep falling down the rabbit hole, and do not sleep. \n"
                elsif choice == 4
                    $score << choice
                    print "The air is so fresh, so flavorful, so airy. After eating your filling air, you pass out right after. \n"
                else
                    print "This is not a choice. Please try again. \n"
                end 
            else
                print "That is not a choice. Please try again. \n"
            end
        elsif choice == 2
            $score << choice 
            print "You now own a heavy history book. What does one even do with history books? \n"
            print "1. You read it obviously \n2. Pillow \n3. See how far you can throw it \n"
            choice = gets.chomp
            choice = choice.to_i 
            if choice == 1
                $score << choice
                print "You are now an expert on the French Reveloution. \n" 
            elsif choice == 2
                $score << choice 
                print "You go to a cafe near by, put the book down gently on the table, then immediately pass out on the book until closing. \
                You are now known as the Sleeping Beauty in that cafe. \n"
            elsif choice == 3
                $score << choice 
                print "You walk back to campus and call all your friends over to the center of Chapin Lawn and start throwng the book around like a frisbee \
                to see who has the strongest throw. You win against your friends. \n"
            else
                print "This is not a choice. Please try again. \n"
            end
        elsif choice == 3
            $score << choice
            print "You find a place to sit and start reading your rock guide. There is a quiz at the end that asks you what rock type are you and you take \
            it and get poodle some how. It isn't even a rock, how did you do that? \n"
        elsif choice == 4
            $score << choice 
            print "Picture books! Though called childish, you find them fun! You decide you want to share this with your friends, what do you do? \n"
            print "1. Force them to do a dramatic renactment of the book \n2. Talk to them abot a new book that while being a picture book, is interesting \n"
            choice = gets.chomp
            choice.to_i
            if choice == 1
                $score << choice
                print "You guys put your heart into this play and are no making it into an actual script to share with the world! \n"
            elsif choice == 2
                $score << choice
                print "As you tell your friends about the picture book, you start saying some of the line in a dramatic voice, and they soon join you. You realize \
                you guys are acting out the play and that choice is an illusion. \n"     
            else
                print "This is not a choice. Please try again. \n"
            end
        else
            print "This is not a choice. Please try again. \n"
            raven()
            #Downtown.new.down()
        end 
    end

    # what i want to add to boba funcction
    # add a function for drink toppings (use switch and cases to try something new)
    # add a function for sugar level (try switch and cases)
    def boba ()
        puts "You walk into Lime Red, and see a bunch of drinks that you want to try. What will you get? "
        puts "1. Taro \n2. Matcha \n3. Chai \n4. Call a friend"
        choice = gets.chomp
        choice = choice.to_i
        if choice == 1
            $score << choice
            puts "You go with Taro, and the purple makes you feel happy. You decide you want to enjoy a walk with your ew drink but somehow end up lost ... \
        you'll find your way back eventually. Right? "
        elsif choice == 2
            $score << choice
            puts "Matcha! The green makes you want to go walk around. Is it because the green reminds you of nature or because it because matcha has more caffine than \
            coffee? "
        elsif choice == 3
            $score << choice
            puts "The classic Chai! You wonder if it is the same color as the orange you had for breakfast. You had cereal? Well then your cereal was orange. "
        elsif choice == 4
            $score << choice 
            puts "You call your friend and ask them to pick your drink! They make you get every single topping they offer ... you can't even \
            taste the drink anymore ... "
        else 
            puts "That is not a choice please try again. "
            boba()
        end
    end

    # what i want to add to ice cream function
    # A function that asks if they want a spoon or a cup (try switch and case)
    # a function that asks about toppings 
    # for the guess about birthday: maybe a random number hing where they have to guess a number from 1 to ten and if they get it right, they win
    def icecream()
        puts "You walk into Herrell's that you've been hearing people talk about. What d you get? "
        puts "1. Vanilla \n2. Chocolate \n3. Coffee \n4. Say it's your birthday and see if you get free ice cream "
        choice = gets.chomp
        choice = choice.to_i
        if choice == 1
            $score << choice
            puts "You decide to load the ice cream with toppings. "
       
        elsif choice == 2 
            $score << choice
            puts "You somehow don't trip and drop your ice cream. "
        
        elsif choice == 3
            $score << choice
            puts "You still want caffine in your ice cream? Please sleep. "
        
        elsif choice == 4 
            $score << choice
            puts "You somehow messed up the date and the weekday when asked when is your birthday. You leave in embarassment. No ice cream for you :( "
          
        else
          puts "That is not a choice. Please try again. "
          icecream()
        end
    end 

    # this is the first part of the event that asks the user where they want to go and will branch off into different things
    def down () 
        puts "You now have your first day downtown for the semester. Where do you plan to go? "
        print "1. Raven Bookstore \n2. Lime Red to get boba tea \n3. Getting ice cream at Heralds \n"
        print "please put the number that correlates to the answer you want to choose: "
        choice = gets.chomp
        # changed it to an integer because at first it gets it as a string so it messed with the if else since it wasn't iterating through because it didn't see it as an integer 1, but the string 1 so it would jump straight to the else statement
        choice = choice.to_i 
        # puts "the value of choice is: #{choice}"
        # puts "the type of choice is #{choice.class}"

        if choice == 1 
            $score << choice
            # puts "the value of choice1 is: #{choice}"
            raven() 
        elsif choice == 2
            $score << choice 
        elsif choice == 3
            $score << choice 
        else
            print "This is not a choice. Please try again. \n"
            down()
            #Downtown.new.down()
        end 
        print "the value of score is #{$score} \n"
        print "This is the end to your first day in Northampton. Hopefully it was good and you are well rested, or maybe not :( "
    end 
end 


Downtown.new.down()
#down()

=begin
Links: 
to_int: https://reactgo.com/ruby-convert-string-to-integer/#:~:text=To%20convert%20an%20string%20to%20a%20integer%2C%20we%20can%20use,number%20then%20it%20returns%200.
global variables: https://www.geeksforgeeks.org/global-variable-in-ruby/#:~:text=Global%20variable%20can%20be%20change%20anywhere%20in%20program.&text=In%20above%20example%2C%20a%20global,access%20anywhere%20in%20the%20program.&text=%23%20%22global%20vars%20can%20be%20used%20everywhere.,-See%3F
calling classes: https://stackoverflow.com/questions/2527830/ruby-calling-class-method-from-instance
array <<: http://ruby-for-beginners.rubymonstas.org/built_in_classes/arrays.html
classes and objects: https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2 
multiline strings: https://www.designcise.com/web/tutorial/how-to-create-multiline-strings-in-ruby 
matcha fun facts: https://www.znaturalfoods.com/blogs/articles/fun-facts-about-matcha-green-tea 


=end