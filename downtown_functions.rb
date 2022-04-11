 
# I wanted everything in a function so I can call it again if the user doesn't answer with the right number 

# tried using switch/case for some functions and if, elsif, else for other to see if it made a difference. seems to work just fine usig either

# This function is for when the user has to pick snacks when they choose to keep reading manga in manga()
def snack()
    print "Oh no! You completely missed dinner because after reading the manga you started to go into a vicious fan cycle and fall down the 
    rabbit hole of a new series. There are only snacks left in your room, but what snack do you eat. \n"
    print "1. Candy \n2. Nothing, you're gonna munch on the best snack: air \n3. Popcorn \n4. Goldfish \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i
    if choice == 1 
        $score << choice
        print "Since you have candy and decide you need sugar to stay up to keep up your intense research of the series going. You somehow eat all of the candy \
        in one go, but keep falling down the rabbit hole of manga, and do not sleep. \n"
        # puts "the value of choice1 is: #{choice}" 
    elsif choice == 2
        $score << choice 
        print "The air is so fresh, so flavorful, so airy. After eating your filling air, you pass out right after. \n"
    elsif choice == 3
        $score << choice 
        print "You grab your Goldfish and the do a dramatic story of the goldfish trying to fight against the giant monster (you) to not be eaten. \
        They tragically lose as you eat your snack. You then go to bed at 4am because your story took 2 hours to tell. \n"
    elsif choice == 4
        $score << choice
        print "You pop your popcorn and the smell goes through your dorm and makes you feel like you wanna watch a movie, but you can't since \
        you have classes tomorrow. You enjoy your popcorn and then go to bed at 3am. \n"
    else
        print "This is not a choice. Please try again. \n"
        snack()
    end 
end

# part of raven(). When user picks to get manga and then they can either keep reading or go eat dinner 
def manga()
    print "You've acquired a new manga! You now go back to your dorm to read the newest manga you've collected and spend the whole day reading it. \
    But it is now dinner time and you are only half way done, what do you do? \n"
    print "1. Go to the dining hall \n2. Keep reading \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i
    if choice == 1
        $score << choice
        print "You go to the dining hall and eat a \"nice\" dinner. You're able to go back to your room and get a good rest for classes toromorrow. \n"
    elsif choice == 2
        $score << choice
        snack()
    else
        print "That is not a choice. Please try again. \n"
        manga()
    end
end

# part of raven(). For when user chooses to get a history book and choices they can ake after 
def history()
    print "You now own a heavy history book. What does one even do with a history book? \n"
    print "1. Pillow \n2. See how far you can throw it \n3. You read it obviously \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i 
    if choice == 1
        $score << choice
        print "You go to a cafe nearby, put the book down gently on the table, then immediately pass out on the book until closing. \
        You are now known as the Sleeping Beauty in that cafe. \n"
    elsif choice == 2
        $score << choice 
        print "You walk back to campus and call all your friends over to the center of Chapin Lawn and start throwng the book around like a frisbee \
        to see who has the strongest throw. You win against your friends. \n"
    elsif choice == 3
        $score << choice 
        print "You are now an expert on the French Reveloution. \n" 
    else
        print "This is not a choice. Please try again. \n"
        history()
    end
end 

# part of raven(). when user picks a rock guide and it will give them a random result as an answer for the quiz that is in the guid for what rock you are 
# should rand_num be added to $score even though it is not based on the users choices and is completely random? 
def rock()
    # make an array that gives a random index to display for rock results
    puts "You find a place to sit and start reading your rock guide. There is a quiz at the end that asks you what type of rock \
    you are. You take it and your result is ... "
    possible_rocks = ["You somehow get poodle. It isn't even a rock, how did you do that? ", "Pebble. Is this book making fun of you? ", "A rock shaped like a penguin. Guess you can't fly. "]
    rand_num = rand(0..2)
    your_rock = possible_rocks[rand_num]
    return your_rock
end

# part of raven(). for when user picks picture book and gives more choices of what to do after getting one
def picture()
    print "Oh book of pictures, what secrets do you hold! Though called childish, you find them fun! You decide you want to share this with your friends, what do you do? \n"
    print "1. Talk to them abot a new book you found that while being a picture book, is interesting in a normal, and appropriate manner \n2. Force them to do a dramatic renactment of the book with you \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i
    if choice == 1
        $score << choice
        print "As you tell your friends about the picture book, you start saying some of the line in a dramatic voice, and they soon join you. You realize \
        you guys are acting out the play and that choice is an illusion. \n" 
    elsif choice == 2
        $score << choice  
        print "You guys put your heart into this play and are planning on making it into an actual script to share with the world! \n"   
    else
        print "This is not a choice. Please try again. \n"
        picture()
    end
end

# raven() function that uses manga(), snack(), history(), rock(), and picture() for when user goes to raven
def raven()
    print "You walk into Ravens bookstore and you're greeted with an array of books. "
    print "What book do you plan to buy? \n"
    print "1. Manga \n2. A rock guide \n3. A history book going in indepth detail on the history of the French Revolution \n4. A picture book \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i   
    if choice == 1 
        $score << choice
        # puts "run manga "
        manga()
    elsif choice == 2
        $score << choice 
        # puts "run history "
        puts rock()
    elsif choice == 3
        $score << choice
        # puts "run rock"
        history()

    elsif choice == 4
        $score << choice 
        # puts "run picture"
        picture()
    else
        print "This is not a choice. Please try again. \n"
        raven()
    end 
end

# for boba(). Asks user about toppings they want 
def boba_topping()
    puts "It is now time to pick your toppings! "
    print "1. None \n2. Boba \n3. Popping Boba \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp 
    choice = choice.to_i 
    case choice
    when 1 
        $score << choice
        puts "Isn't that just milk tea?? "
    when 2 
        $score << choice 
        puts "The original, and classic! "
    when 3
        $score << choice 
        puts "Lets hope the flavors go with your tea! Don't be like Bob how tried seeing if yogurt popping boba could go with Chai milk tea. "
    else
        puts "That is not a choice. Please try again. "
        boba_topping()
    end 
end

# for boba(). asks user about sugar percent levels
def sugar_level()
    puts "Sweetness is important to any drink. How sweet will your boba be? "
    print "1. 0% \n2. 25% \n3. 50% \n4. 75% \n5. 100% \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp 
    choice = choice.to_i 
    case choice 
    when 1 
        $score << choice
        puts "Almost as sweet as you :) "
    when 2
        $score << choice
        puts "Just a slight bit of sugar. "
    when 3 
        $score << choice
        puts "According to some, the sweetness to go with. "
    when 4 
        $score << choice
        puts "I was told to tell you you're pushing it with the sweetness. "
    when 5 
        $score << choice
        puts "I was told to tell you you're a heathen. "
    else
        puts "That is not a choice. Please try again. "
        sugar_level()
    end 
end

# ask user what flavor they want and combines boba_topping() and sugar_level()
def boba ()
    puts "You walk into Lime Red, and see a bunch of drinks that you want to try. What will you get? "
    puts "1. Taro \n2. Call a friend \n3. Chai \n4. Matcha"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i
    if choice == 1
        $score << choice
        puts "You go with Taro, and the purple makes you feel happy. You decide you want to enjoy a walk with your ew drink but somehow end up lost ... \
        you'll find your way back eventually. Right? "
        sugar_level()
        boba_topping()
    elsif choice == 2
        $score << choice
        puts "You call your friend and ask them to pick your drink! They make you get every single topping they offer ... you can't even \
        taste the drink anymore ... "
        # sugar_level()
        # boba_topping()
    elsif choice == 3
        $score << choice
        puts "The classic Chai! You wonder if it is the same color as the orange you had for breakfast. You had cereal? Well then your cereal was orange. "
        sugar_level()
        boba_topping
    elsif choice == 4
        $score << choice 
        puts "Matcha! The green makes you want to go walk around. Is it because the green reminds you of nature or because it because matcha has more caffine than \
        coffee? "
        sugar_level()
        boba_topping()

    else 
        puts "That is not a choice. Please try again. "
        boba()
    end
end

# for cone() when user picks to have a waffle cone
def waffle_cone()
    puts "Are you one of those people who eat waffle cones or throw them out? " 
    print "1. Eat it \n2. Throw it out \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i
    case choice 
    when 1
        $score << choice
        puts "Yay for waffle cones! "
    when 2
        $score << choice
        puts "How could you? They took so much time to make ... "
    else 
        puts "That is not a choice. Please try again. "
        waffle_cone()
    end
end

# for icecream(). asks user if they want cup, cone, waffle cone
def cone() 
    puts "You order your ice cream flavor, but will you get it in a cone or a cup. \n"
    print "1. Regular sugar cone \n2. Waffle cone \n3. Cup \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp 
    choice = choice.to_i

    case choice 
    when 1
        $score << choice 
        puts "Let's hope you don't trip and drop your cone when you get it. "
    when 2 
        $score << choice
        waffle_cone()
    when 3 
        $score << choice
        puts "Guess melting won't be an issue. "
    else
      puts "This is not a choice. Please try again. "
      cone()
    end
end 

# for icecream(). ask user about toppings for icecream 
def icecream_topping()
    puts "Now that you have your ice cream flavor and vehicle for eating, what will you top your ice cream with? "
    print "1. Rainbow sprinkles \n2. Chocolate sprinkles \n3. All the toppings \n"
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i
    case choice 
    when 1
        $score << choice
        puts "Ooooo bright colors. "
    when 2
        $score << choice
        puts "You might be one of the people who argue about Fruity Pebbles and Coco Pebbles. "
    when 3 
        $score << choice
        puts "You menance. Look at that poor worker putting all the toppings on your ice cream. How will you even eat that?"
    else
        puts "That is not a choice. Please try again. "
        icecream_topping()
    end
end

# for icecream(). ask user for number between 1 - 10 and if right they get ice cream, if not no ice cream 
# not sure if i want to add something to $score depending if they're right or not 
def birthday()
    rand_num = rand(1..10)
    puts "The worker asks you what's your birthday (even though it is implied it is today, but lets not pay attention to logistics). \
    Pick a number from 1 to 10, if you're right you'll get your ice cream! "
    print "What is your guess? "
    # puts "the random number is #{rand_num}"
    guess = gets.chomp
    guess = guess.to_i

    if guess == rand_num
        puts "You are correct! You get your free ice cream and now have multiple birthdays. "      
    else
        puts "You somehow messed up the date and the weekday when asked when is your birthday. You leave in embarassment. No ice cream for you :( "     
    end
end

# for when user goes to herell's. combines cone() and icecream_topping()
def icecream()
    puts "You walk into Herrell's that you've been hearing people talk about. What do you get? "
    puts "1. Coffee \n2. Chocolate \n3. Vanilla \n4. Say it's your birthday and see if you get free ice cream "
    print "Please put the number that correlates to the answer you want to choose: "
    choice = gets.chomp
    choice = choice.to_i
    if choice == 1
        $score << choice
        puts "If you get many scoops do you think it will look like a snowman? "
        cone()
        icecream_topping()
    elsif choice == 2 
        $score << choice
        puts "Same flavor the kid before you picked. Though they just tripped and dropped their cone. Lets hope that doesn't happen to you. "  
        cone()
        icecream_topping()
    elsif choice == 3
        $score << choice
        puts "If you get many scoops do you think it will look like a snowman? "
        cone()
        icecream_topping()
    elsif choice == 4 
        $score << choice
        birthday()
        # puts "You somehow messed up the date and the weekday when asked when is your birthday. You leave in embarassment. No ice cream for you :( "   
    else
        puts "That is not a choice. Please try again. "
        icecream()
    end
end 


=begin
Links: 
to_int: https://reactgo.com/ruby-convert-string-to-integer/#:~:text=To%20convert%20an%20string%20to%20a%20integer%2C%20we%20can%20use,number%20then%20it%20returns%200.
global variables: https://www.geeksforgeeks.org/global-variable-in-ruby/#:~:text=Global%20variable%20can%20be%20change%20anywhere%20in%20program.&text=In%20above%20example%2C%20a%20global,access%20anywhere%20in%20the%20program.&text=%23%20%22global%20vars%20can%20be%20used%20everywhere.,-See%3F
calling classes: https://stackoverflow.com/questions/2527830/ruby-calling-class-method-from-instance
array <<: http://ruby-for-beginners.rubymonstas.org/built_in_classes/arrays.html
classes and objects: https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2 
multiline strings: https://www.designcise.com/web/tutorial/how-to-create-multiline-strings-in-ruby 
matcha fun facts: https://www.znaturalfoods.com/blogs/articles/fun-facts-about-matcha-green-tea 
multiline comments: https://stackoverflow.com/questions/2989762/multi-line-comments-in-ruby
random num: https://blog.appsignal.com/2018/07/31/generating-random-numbers-in-ruby.html
require in ruby: https://www.thoughtco.com/requre-method-2908199#:~:text=In%20Ruby%2C%20the%20require%20method,method%20definitions%20in%20the%20file. 
when i was having issues with git pull because of refs and histories: https://komodor.com/learn/how-to-fix-failed-to-push-some-refs-to-git-errors/
vim stuff that i didn't really use: https://www.freecodecamp.org/news/how-to-exit-vim/
git pull for ulreated histories (link i used for pull that helped): https://www.educative.io/edpresso/the-fatal-refusing-to-merge-unrelated-histories-git-error 
git push when i wanted to push from my local mater branch to the repos remote downtown branch (link i used to help push) : https://devconnected.com/how-to-push-git-branch-to-remote/ 
personal access token video: https://www.youtube.com/watch?v=kHkQnuYzwoo 
git link about branches: https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging
git remote stuff: https://learn.co/lessons/git-remote-code-along
git push video: https://www.youtube.com/watch?v=wrb7Gge9yoE
about refs error: https://articles.assembla.com/en/articles/748133-failed-to-push-some-refs-git-error
.sample for arrays: https://apidock.com/ruby/v2_5_5/Array/sample 
random element in array with .sample: https://stackoverflow.com/questions/3482149/how-do-i-pick-randomly-from-an-array
=end


