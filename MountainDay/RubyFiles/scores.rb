# this class randomizes the different majors that the user can have 
# there are 5 stem and 5 humanity majors

class Major 
    # if the user gets a lower number then they will get 1 of 5 stem majors at random 
    $stem_majors = ["Math", "Computer Science", "Statistical Data Science", "Engineering", "Environmental Science"]
    # if they get a higher number they will get 1 of 5 hmanity majors at random 
    $humanities_major = ["English", "Government", "Languages", "History", "Education"]

    def score() # function to calculate the scores 
        user_score = 0
        $score.each { |num| #for every num in score 
            user_score += num # add to user num
        }
        user_score = user_score / $score.size # divide by size of the score based on user's answers 
        return user_score
    end 

    def major_type(user_score) # function to determine the specific major type 
        if user_score <= 5
            major = $stem_majors.sample # choose random sample for the stem
        elsif user_score >= 6
            major = $humanities_major.sample 
        end
        return major # return end major 
    end

    def display()
        @user_points = score() #the user points coordinates with the score 
        @major = major_type(@user_points) # major is a combination of major type and points 

        # display on the screen, their score and major 
        @response1 = Text.new("Your destined major is #{@major}", x: 55, y: 250, color: 'black', size: 40, z: 30) 
        puts "The major is #{@major}"
    end

    def clicks # function that compares the states to the determined major 
        if $state == 13
            $user_major.display
            $state = 14
        end
    end
end 
