require 'ruby2d'
require_relative "herrells_flavor.rb"
require_relative "herrells_topping.rb"
require_relative "limered_boba.rb"
require_relative "downtown_destination.rb"
require_relative "raven_books.rb"
require_relative "raven_snacks.rb"
require_relative "raven_rock.rb"
require_relative "scores_graphics.rb"
require_relative "newline.rb"
require_relative "../../MountainDay/RubyFiles/mountain_main.rb"


$score = []
# set width: 1400 # width of window
# set height: 1000 #height of window
# set title: 'Smith Journey', background: '#FFE8E8'
# class MainDowntown
def downtown_main()
    # clear
    puts "start downtown"
    # set width: 1400 # width of window
    # set height: 1000 #height of window


    # set title: 'Smith Journey', background: '#FFE8E8'

    # the start of the the code and makes the initial display of asking the user where they want to go
    # state is to specify which scenerio/situation youre at since they each correspond to a differentnumber
    puts "the state in downtown_main() is: #{$state}"
    $state = 22
    # This is the start and creates the class for picking where the user wants to go downtown 
    puts "making the destination class"
    $start = Destination.new
    # makes the images appear on screen
    puts "displaying destination class"
    $start.display
    puts "after downtown is displayed"

    # clicks_for_users()

    # a long case statement 
    # $state changes when the user makes a choice/clicks on an image so depending on that change, it will call a certain class 
    # puts "start of the switch statement"
    # on :mouse_down do |event|
        # case $state
            # for Destination: ask user where they want to go 
            # when 22
                # clear
                # $start.clicks(event.x, event.y)
            # calls HerrellFlavor: what ice cream flavor the user wants
            # when 23
                # clear
                # $flavor.clicks(event.x, event.y)
            # calls HerrellTopping: what ice cream flavor the user wants
            # when 26
                # clear 
                # $toppings.clicks(event.x, event.y)
            # calls BobaFlavor: what boba tea flavor the user wants
            # when 24
                # clear
                # $boba.clicks(event.x, event.y)
            # calls BobaSweetmess: how sweet they want their baba
            # when 29
                # clear
                # $sweetness.clicks(event.x, event.y)
            # calls Bookstore: what book does the user want 
            # when 25
                # clear
                # $book.clicks(event.x, event.y)
            # calls Snacks: if user picks manga what snack will they eat 
            # when 30
                # clear
                # $snacks.clicks(event.x, event.y)
            # calls Rock: gives user a random rack that they are
            # when 31
                # clear
                # $rock.clicks()
            # calls History: if user picks a history book 
            # when 32
                # clear
                # $history.clicks(event.x, event.y)
            # calls Picture: if user picks a picture book
            # when 33
                # clear
                # $picture.clicks(event.x, event.y)
            # calls Users: finds the users major based on their average score
            # when 34
                # clear
                # $user_major.clicks()
        # end
    # end
end
# end

# function that calls all the cases to start the code 
# I made it a function 
# downtown_main()

# show

=begin
Resources
Waka's TA Hours 
- Helped us find link for a resource to make newlines in ruby2d: https://github.com/ruby2d/ruby2d/issues/195 
- helped with getting the code to have it switch between images when clicking an image
- helped with figuring out things with classes and instances: https://www.tutorialspoint.com/ruby/ruby_classes.htm 


Yanning TA Hours
- mentioned making a users class 


Links
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

