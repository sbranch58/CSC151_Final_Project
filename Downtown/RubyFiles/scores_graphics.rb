# $scores global variable with random hard coded values to test on to make sure it is finding the major correctly
# we are plaaning to have a $score variable to hold the user's choices and each choice is a number so to test it I just put random numbers for now 
# $score = [1, 3, 5, 8, 0, 4, 6, 7] # gives 4 as average
# $score = [1, 2, 3, 4, 5, 91] # gives 17 as average
# plan to put majors in a hashmap to include links, but is in an array for now for simplicity and making sure it works 

# there are 5 stem and 5 humanity majors 
# if the user gets a lower number then they will get 1 of 5 stem majors at random 
# $stem_majors = ["Math", "Computer Science", "Statistical Data Science", "Engineering", "Environmental Science"]
# if they get a higher number they will get 1 of 5 hmanity majors at random 
# $humanities_major = ["English", "Government", "Languages", "History", "Education"]
require "./Convocation2/RubyFiles/ConvocationMain.rb"
class Users
    # there are 5 stem and 5 humanity majors 
    # if the user gets a lower number then they will get 1 of 5 stem majors at random 
    $stem_majors = ["Math", "Computer Science", "Statistical Data Science", "Engineering", "Environmental Science"]
    # if they get a higher number they will get 1 of 5 hmanity majors at random 
    $humanities_major = ["English", "Government", "Languages", "History", "Education"]

    $mix_majors = ["Dance", "Biochemistry", "Theatre", "Psychology", "Studio Art"]
    
    # function that calclates the average of the numbers the the $score array 
    def calc_score()
        user_score = 0
        $score.each { |num|
            user_score += num
        }
        user_score = (user_score / $score.size)
        puts "user_score: #{user_score}"
        # rounds down the number since it rounded 4.25 to 4 and rounds 17.6667 to 17
        return user_score
    end 

    # based on the users average they will be assigned a random stem or humanity major 
    # the number to decide is subject to change since I just hard coded a radom numbet to test things
    # will pick number when we find averages of our section 

    # lowest possible average with mountain day and downtown: 2
    # highest possible average with mountain day and downtows: 7
    def check_major(user_score)
        if user_score == 1
            # return "You are a stem major "
            major = $stem_majors.sample
        elsif user_score == 2
            major = $humanities_major.sample
            # return "You are a humanities major "
        elsif user_score == 3
            major = $mix_majors.sample
        end
        puts "major is: #{major}"
        return major
    end


    def display()
        @user_points = calc_score()
        @major = check_major(@user_points)

        @response1 = Text.new("Your destined major is #{@major}", x: 55, y: 250, color: 'black', size: 40, z: 30) 
        puts "The $score is #{$score}"
        puts "the user_points is #{@user_points}"
        puts "The major is #{@major}"

        @replay_button = Rectangle.new(x: 125, y: 350, width: 250, height: 150, color: '#42C2FF', z: 20)
        @replay_text = Text.new("Replay", x: 135, y: 400, width: 200, height: 150, color: 'black', size: 34, z: 30)
    end

    # will display the major after the user makes a final choice and clicks to the next screen 
    def clicks()
            if $state == 43
                $user_major.display
                # added the $state = 14 so the user can't keep clicking to get multiple majors 
                $state = 44
            end
        # end 
    end

    def replay(x, y)
        if @replay_button.contains? x, y 
            puts "replay button pressed"
            $state = 1
            convocation_main()
            puts "replay started"
        end 
    end 
end 


