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

$score = []


set width: 1400 # width of window
set height: 1000 #height of window


set title: 'Smith Journey', background: '#FFE8E8'

$state = 1
$start = Destination.new
$start.display
# score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)

on :mouse_down do |event|
    case $state
        when 1
            clear
            $start.clicks(event.x, event.y)
        when 2
            clear
            $flavor.clicks(event.x, event.y)
        when 5
            clear 
            $toppings.clicks(event.x, event.y)
        when 3
            clear
            $boba.clicks(event.x, event.y)
        when 8
            clear
            $sweetness.clicks(event.x, event.y)
        when 4 
            clear
            $book.clicks(event.x, event.y)
        when 9
            clear
            $snacks.clicks(event.x, event.y)
        when 10
            clear
            # $rock.clicks(event.x, event.y)
        when 11
            clear
            $history.clicks(event.x, event.y)
        when 12
            clear
            $picture.clicks(event.x, event.y)
        when 13 
            clear
            $user_major.clicks()
        
    end
end

# user_points = calc_score()
# major = check_major(user_points)
# puts "user_score is #{user_points}"
# puts "users majore is #{major}"
show

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

