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
class Users
    # there are 5 stem and 5 humanity majors 
    # if the user gets a lower number then they will get 1 of 5 stem majors at random 
    $stem_majors = ["Math", "Computer Science", "Statistical Data Science", "Engineering", "Environmental Science"]
    # if they get a higher number they will get 1 of 5 hmanity majors at random 
    $humanities_major = ["English", "Government", "Languages", "History", "Education"]

    def calc_score()
        user_score = 0
        $score.each { |num|
            user_score += num
        }
        user_score = user_score / $score.size
        # rounds down the number since it rounded 4.25 to 4 and rounds 17.6667 to 17
        return user_score
    end 

    def check_major(user_score)
        if user_score <= 5
            # return "You are a stem major "
            major = $stem_majors.sample
        elsif user_score >= 6
            major = $humanities_major.sample
            # return "You are a humanities major "
        end
        return major
    end

    def display()
        @user_points = calc_score()
        @major = check_major(@user_points)

        @response1 = Text.new("Your destined major is #{@major}", x: 55, y: 250, color: 'black', size: 40, z: 30) 
        puts "The score is #{$score}"
        puts "The major is #{@major}"
    end

    def clicks
        # on :mouse_down do |event|
            # $state = 13
            # $user_major = Users.new
            if $state == 13
                $user_major.display
                # puts "The score is #{$score}"
                # puts "The major is #{@major}"
                $state = 14
            end
        # end 
    end
end 

# function that calclates the average of the numbers the the $score array 
# def calc_score()
    # user_score = 0
    # $score.each { |num|
        # user_score += num
    # }
    # user_score = user_score / $score.size
    # rounds down the number since it rounded 4.25 to 4 and rounds 17.6667 to 17
    # return user_score
# end 
# puts "The user_score is #{calc_score()}"

# variable with function to store average num in variable
# user_score = calc_score()

# based on the users average they will be assigned a random stem or humanity major 
# the number to decide is subject to change since I just hard coded a radom numbet to test things
# will pick number when we find averages of our section 
# def check_major(user_score)
    # if user_score <= 5
        # return "You are a stem major "
        # major = $stem_majors.sample
    # elsif user_score >= 6
        # major = $humanities_major.sample
        # return "You are a humanities major "
    # end
    # return major
# end

# puts "running check_major #{check_major(user_score)}"
# puts "Your chosen major is #{check_major(user_score)}"

# have to command click link to get it to save 
# puts "The link: https://www.smith.edu/" 