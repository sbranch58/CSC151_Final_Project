 
def snack()
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
        snack()
    end 
end

def manga()
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
        snack()
    else
        print "That is not a choice. Please try again. \n"
        manga()
    end
end

def history()
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
        history()
    end
end 

def rock()
    # make an array that gives a random index to display for rock results
    puts "You find a place to sit and start reading your rock guide. There is a quiz at the end that asks you what type of rock \
    you are. You take it and your result is ... "
    possible_rocks = ["You get poodle somehow. It isn't even a rock, how did you do that? ", "Pebble. Is this book making fun of you? ", "A rock shaped like a penguin. "]
    rand_num = rand(0..2)
    your_rock = possible_rocks[rand_num]
    return your_rock
end

def picture()
    print "Picture books! Though called childish, you find them fun! You decide you want to share this with your friends, what do you do? \n"
    print "1. Force them to do a dramatic renactment of the book \n2. Talk to them abot a new book that while being a picture book, is interesting \n"
    choice = gets.chomp
    choice = choice.to_i
    if choice == 1
        $score << choice
        print "You guys put your heart into this play and are no making it into an actual script to share with the world! \n"
    elsif choice == 2
        $score << choice
        print "As you tell your friends about the picture book, you start saying some of the line in a dramatic voice, and they soon join you. You realize \
        you guys are acting out the play and that choice is an illusion. \n"     
    else
        print "This is not a choice. Please try again. \n"
        picture()
    end
end

def raven()
    print "You walk into Ravens bookstore and you're greeted with an array of books. "
    print "What book do you plan to buy? \n"
    print "1. Manga \n2. A history book going in indepth detail on the history of the French Revolution \n3. A rock guide \n4. A picture book \n"
    choice = gets.chomp
    choice = choice.to_i   
    if choice == 1 
        $score << choice
        puts "run manga "
        manga()
    elsif choice == 2
        $score << choice 
        puts "run history "
        history()
    elsif choice == 3
        $score << choice
        puts "run rock"
        puts rock()

    elsif choice == 4
        $score << choice 
        puts "run picture"
        picture()
    else
        print "This is not a choice. Please try again. \n"
        raven()
    end 
end

def boba_topping()
    puts "It is now time to pick your toppings! "
    print "1. None \n2. Boba \n3. Popping Boba \n"
    choice = gets.chomp 
    choice = choice.to_i 
    case choice
    when 1 
        $score << choice
        puts "Isn't that just milk tea? "
    when 2 
        $score << choice 
        puts "The original! "
    when 3
        $score << choice 
        puts "Lets hope the flavors go with your tea! "
    else
        puts "That is not a choice. Please try again. "
        boba_topping()
    end 
end

def sugar_level()
    puts "Sweetness is important to any drink. How sweet will your boba be? "
    print "1. 0% \n2. 25% \n3. 50% \n4. 75% \n5. 100% \n"
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
        puts "I was told to tell you you're a heathen,. "
    else
        puts "That is not a choice. Please try again. "
        sugar_level()
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

def waffle_cone()
    puts "Are you one of those people who eat waffle cones or throw them? " 
    print "1. Eat it \n2. Throw it out \n"
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

def cone() 
    puts "You order your ice cream flavor, but will you get it in a cone or a cup. \n"
    print "1. Regular sugar cone \n2. Waffle cone \n3. Cup \n"
    choice = gets.chomp 
    choice = choice.to_i

    case choice 
    when 1
        $score << choice 
        puts "Let's hope you don't trip and rop your cone when you get it. "
    when 2 
        $score << choice
        waffle_cone()
    when 3 
        $score << choice
        puts "No ice cream dripping down for you. "

    else
      puts "This is not a choice. Please try again. "
      cone()
    end
end 

def icecream_topping()
    puts "Now that you have your ice cream flavor and vehicle for eating, what will you top your ice cream with? "
    print "1. Rainbow sprinkles \n2. Chocolate sprinkles 3. All the toppings \n"
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

def birthday()
    rand_num = rand(1..10)
    puts "The worker asks you what's your birthday (even though it is implied it is today, but lets not pay attention to logistics). \
    Pick a number from 1 to 10, if you're right you'll get your ice cream! "
    print "What is your guess? "
    guess = gets.chomp
    guess = guess.to_i

    if guess == rand_num
        puts "You are correct! You get your free ice cream and now have multiple birthdays. "      
    else
        puts "You somehow messed up the date and the weekday when asked when is your birthday. You leave in embarassment. No ice cream for you :( "     
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
        cone()
        icecream_topping()
    elsif choice == 2 
        $score << choice
        puts "You somehow don't trip and drop your ice cream. "  
        cone()
        icecream_topping()
    elsif choice == 3
        $score << choice
        puts "You still want caffine in your ice cream? Please sleep. " 
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


=end


