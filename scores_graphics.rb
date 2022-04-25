# $scores global variable with random hard coded values to test on to make sure it is finding the major correctly
# $score = [1, 3, 5, 8, 0, 4, 6, 7] # gives 4 as average
# $score = [1, 2, 3, 4, 5, 91] # gives 17 as average

require "./Convocation2/RubyFiles/ConvocationMain.rb"

class Users
    # if the user gets a lower number then they will get 1 of 5 stem majors at random 
    $stem_majors = ["Math", "Computer Science", "Statistical Data Science", "Engineering", "Environmental Science"]
    # if they get a higher number they will get 1 of 5 hmanity majors at random 
    $humanities_major = ["English", "Government", "Languages", "History", "Education"]

    $mix_majors = ["Dance", "Biochemistry", "Theatre", "Psychology", "Studio Art"]
    
    # function that calclates the average of the numbers the the $score array 
    def calc_score()
        user_score = 0
        $score.each { |num|  #for every num in score 
            user_score += num  # add to user num
        }
        user_score = (user_score / $score.size) # divide by size of the score based on user's answers 
        puts "user_score: #{user_score}"

        # rounds down the number since it rounded 4.25 to 4 and rounds 17.6667 to 17
        return user_score
    end 

    # lowest possible average with mountain day and downtown: 2
    # highest possible average with mountain day and downtows: 7
    def check_major(user_score) # function to determine the specific major type 
        if user_score == 1
            major = $stem_majors.sample # choose random sample from the stem
        elsif user_score == 2
            major = $humanities_major.sample #choose random sample from the humanities 
        elsif user_score == 3
            major = $mix_majors.sample  #choose random sample from the mix 
        end
        puts "major is: #{major}"
        return major # return major from the list  
    end


    def display() # everything in display is added to the window 
        @user_points = calc_score()  #the user points coordinates with the score 
        @major = check_major(@user_points) # major is a combination of major type and points 

        # display on the screen, their score and major 
        top = Text.new('Drumroll please!', x: 430, y: 30, color: 'black', size: 80)
        @response1 = Text.new("Your destined major is #{@major}", x: 110, y: 500, color: 'black', size: 70, z: 30) 
        puts "The $score is #{$score}"
        puts "the user_points is #{@user_points}"
        puts "The major is #{@major}"
        
        if @major == "Math"
            puts "disply math link"
            replacccy_text = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 9666)

        elsif @major == "Computer Science"
            puts "putd cs links"
            eplayccc_text = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 4649)

        elsif @major == "Engineering"
            puts "engineering"
            ycccc_text = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 25639)
        elsif @major == "Statistical Data Science"
            puts "sds"
            regfdcccc_text = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 1000)
        elsif @major == "Environmental Science"
            puts "envi"
            @replaycccc_text = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 2469)

        elsif @major == "Studio Art"
            nmhay_tecccxt = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 23539)
        
        elsif @major == "Dance"
            hdhccext = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 244329)
        end

        @replay_button = Rectangle.new( x: 550, y: 820, width: 380, height: 80, color: 'teal', z: 8)
        @replay_text = Text.new('Click to replay quiz', x: 570, y: 825, color: 'black', size: 35, z: 9)
    end

    def clicks() # Displays the major after the user makes a final choice and clicks to the next screen 
        $user_major.display
        $state = 44   # added the $state = 14 so the user can't keep clicking to get multiple majors 
    end

    def replay(x, y) # replay button that allows user to loop back to the beginning 
        if @replay_button.contains? x, y 
            $state = 1 # loops back to state 1 or the first page 
            convocation_main()
        end 
    end 
end 


