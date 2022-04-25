# $scores global variable with random hard coded values to test on to make sure it is finding the major correctly
# $score = [1, 3, 5, 8, 0, 4, 6, 7] # gives 4 as average
# $score = [1, 2, 3, 4, 5, 91] # gives 17 as average

require "./Convocation2/RubyFiles/ConvocationMain.rb"
require_relative "newline.rb"

class Users
    # if the user gets a lower number then they will get 1 of 5 stem majors at random 
    $stem_majors = ["Math", "Computer \n\nScience", "Statistical Data \n\nScience", "Engineering", "Environmental \n\nScience"]
    # if they get a higher number they will get 1 of 5 hmanity majors at random 
    $humanities_major = ["English", "Government", "Languages", "History", "Education"]

    $mix_majors = ["Dance", "Biochemistry", "Theatre", "Psychology", "Studio \n\nArt"]
    
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
            # major = "English" # to check placement of extra text
        elsif user_score == 2
            major = $humanities_major.sample #choose random sample from the humanities 
            # major = "English"
        elsif user_score == 3
            major = $mix_majors.sample  #choose random sample from the mix
            # major = "English" 
        end
        puts "major is: #{major}"
        return major # return major from the list  
    end


    def display() # everything in display is added to the window 
        @user_points = calc_score()  #the user points coordinates with the score 
        @major = check_major(@user_points) # major is a combination of major type and points 

        # display on the screen, their score and major 
        top = Text.new('Drumroll please!', x: 430, y: 30, color: 'black', size: 80)
        @response1 = draw_multiline_text("Your destined major is #{@major}", x: 110, y: 500, color: 'black', size: 70, z: 30) 
        # @randtext =  Text.new("text :)", x: 110, y: 500, color: 'black', size: 35, z: 825)
        # @randtext.remove
        puts "The $score is #{$score}"
        puts "the user_points is #{@user_points}"
        puts "The major is #{@major}"
        
        # checks what major the user gets and then gives them the appropriate link/resource that matches that major
        if @major == "Math"
            # @text = 'https://www.smith.edu/academics/mathematics-statistics'
            # @link = @text.gsub(URI.regexp, '<a href="\0">\0</a>')
            @replacccy_text = draw_multiline_text("You are up to decoding the world's biggest enigmas alongside a community \nof thinkers … you are a MATH major!", x: 110, y: 700, color: 'black', size: 35, z: 9666)
        elsif @major == "Computer \n\nScience"
            @eplayccc_text = draw_multiline_text("Your mom always said you liked to get in trouble, yet now these \nproblems will come up while you create amazing things.", x: 110, y: 700, color: 'black', size: 35, z: 4649)
        elsif @major == "Engineering"
            @ycccc_text = draw_multiline_text("You are a maker. You love the sciences and since you first visited Smith, \nFord's architecture captivated your heart. Yes, you get to wear the \nhelmet for graduation. You are destined to become an Engineering major!", x: 110, y: 700, color: 'black', size: 35, z: 25639)
        elsif @major == "Statistical Data \n\nScience"
            @regfdcccc_text = draw_multiline_text("You were always that friend who always overthink about everything. You like \ncoding but not that much, you like math but not really that much? We got the \nperfect mix for you. Well, welcome to the SDS major!", x: 110, y: 700, color: 'black', size: 35, z: 1000)
        elsif @major == "Environmental \n\nScience"
            @replaycccc_text = draw_multiline_text("You dreamed of a green planet, always compost, and you find meaning in building \nspaces where the Earth can be a better place. You are soon to become an \nEnvironmental and Policy major! ", x: 110, y: 700, color: 'black', size: 35, z: 2469)

        elsif @major == "Studio \n\nArt"
            @nmhay_tecccxt = draw_multiline_text("Get ready to make new and beautiful things to show the world! \nYour creative mind can make so many things. \nLike your drawing you made with your teacher as a rock.", x: 110, y: 700, color: 'black', size: 35, z: 23539)
        elsif @major == "Dance"
            @hdhccext = draw_multiline_text("Dance! Show your elegance and grace. Though beware, your parents will show \nvideos of you dancing as a child to everyone \nso they can see how much you've grown. ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
        elsif @major == "Psychology"
            @resource = draw_multiline_text("Human behavior fascinates you. You especially find it fascinating \nhow a child throwing a tantrum can scream so loudly. ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
        elsif @major == "Theatre"
            @resource = draw_multiline_text("Lights! Camera! Action! The world is your stage, and it's time to make everything \na play. Everything. Even the time you got lost in the supermarket as a child. ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
        elsif @major == "Biochemistry"
            @resource = draw_multiline_text("Please stop mixing random liquids together. \nrange juice mixed with cranberry juice won't make a special potion. ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
            
        elsif @major == "English"
            @resource = draw_multiline_text("Words, stories, art! You always knew you belong to those captivating books on the \nshelves of Neilson. You are an English major!", x: 110, y: 700, color: 'black', size: 35, z: 244329)
        elsif @major == "Government"
            @resource = draw_multiline_text("You are an activist, a soon to become politician, you fight and \nsupport those you care about. You are a Government major! ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
        elsif @major == "Languages"
            @resource = draw_multiline_text("Literature is not an easy thing, but you are convinced to spend your life discovering \nits mysteries. You are on the path to becoming a Classics and Literature major! ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
        elsif @major == "History"
            @resource = draw_multiline_text("There is no future without a past. You find joy in studying those events that marked \nour development as human beings. You will become a History major! ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
        elsif @major == "Education"
            @resource = draw_multiline_text("You loved to tutor your classmates and you are aware that education is one of the \nmost powerful forces to change the world. Welcome, new Education & Child \nStudies major! ", x: 110, y: 700, color: 'black', size: 35, z: 244329)
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
            $score = [] 
            convocation_main()
        end 
    end 
end 

=begin
links in ruby: https://coderwall.com/p/0ktfmw/ruby-make-plain-text-links-clickable
links in ruby part 2: https://stackoverflow.com/questions/16006016/convert-links-from-a-string-to-clickable-links-using-ruby-rails
=end 
