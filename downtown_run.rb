require '/../Users/sarah/Desktop/CSC151/FinalProject/Code/downtown_functions.rb'

=begin
this is the global variable for holding the "scores" bt is to keep track of the players choices throughout the game 
so at the end it can calculate the average score of the user to give them a major choice
=end
$score = []

# class for the day downtown event with the functions needed to run the event inside
class Downtown
    # this is the first part of the event that asks the user where they want to go and will branch off into different things
    def down() 
        puts "You now have your first day downtown for the semester. Where do you plan to go? "
        print "1. Raven Bookstore \n2. Lime Red to get boba tea \n3. Getting ice cream at Herrell's \n"
        print "please put the number that correlates to the answer you want to choose: "
        choice = gets.chomp
        # changed it to an integer because at first it gets it as a string so it messed with the if else since it wasn't iterating through because it didn't see it as an integer 1, but the string 1 so it would jump straight to the else statement
        choice = choice.to_i 
        # puts "the value of choice is: #{choice}"
        # puts "the type of choice is #{choice.class}"

        case choice
        when 1 
            $score << choice
            # puts "the value of choice1 is: #{choice}"
            puts "run raven() "
            raven() 
        when 2
            $score << choice 
            puts "run boba() "
            boba()
        when 3
            $score << choice 
            puts "run icecream()"
            icecream()
        else
            print "This is not a choice. Please try again. \n"
            puts "rerunning down() "
            down()
        end 
         #print "the value of score is #{$score} \n"
         #print "This is the end to your first day in Northampton. Hopefully it was good and you are well rested, or maybe not :( "
    end 
    # print "the value of score is #{$score} \n"
    # print "This is the end to your first day in Northampton. Hopefully it was good and you are well rested, or maybe not :( "
end

puts "run down() start of the code "
Downtown.new.down()
#puts "run snack() "
#snack()
print "the value of score is #{$score} \n"
print "This is the end to your first day in Northampton. Hopefully it was good and you are well rested, or maybe not :( "
