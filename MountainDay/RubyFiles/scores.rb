
class Major
    # there are 5 stem and 5 humanity majors 
    # if the user gets a lower number then they will get 1 of 5 stem majors at random 
    $stem_majors = ["Math", "Computer Science", "Statistical Data Science", "Engineering", "Environmental Science"]
    # if they get a higher number they will get 1 of 5 hmanity majors at random 
    $humanities_major = ["English", "Government", "Languages", "History", "Education"]

    def score()
        user_score = 0
        $score.each { |num|
            user_score += num
        }
        user_score = user_score / $score.size
        return user_score
    end 

    def major_type(user_score)
        if user_score <= 5
            major = $stem_majors.sample
        elsif user_score >= 6
            major = $humanities_major.sample
        end
        return major
    end

    def display()
        @user_points = score()
        @major = major_type(@user_points)

        @response1 = Text.new("Your destined major is #{@major}", x: 55, y: 250, color: 'black', size: 40, z: 30) 
        puts "The score is #{$score}"
        puts "The major is #{@major}"
    end

    def clicks
        if $state == 13
            $user_major.display
            $state = 14
        end
    end
end 
