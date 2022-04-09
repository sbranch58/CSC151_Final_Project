# $score = [1, 3, 5, 8, 0, 4, 6, 7] # gives 4 as average
$score = [1, 2, 3, 4, 5, 91] # gives 17 as average
$stem_majors = ["Math", "Computer Science", "Statistical Data Science", "Engineering", "Environmental Science"]
$humanities_major = ["English", "Government", "Languages", "History", "Education"]


# function that calclates the vales of the numbers the the $score array 
def calc_score ()
    user_score = 0
    $score.each { |num|
        user_score += num
    }
    user_score = user_score / $score.size
    # rounds down the number since it rounded 4.25 to 4 and rounds 17.6667 to 17
    return user_score
end 
puts "The user_score is #{calc_score()}"

user_score = calc_score()
def check_major(user_score)
    if user_score <= 18
        # return "You are a stem major "
        major = $stem_majors.sample
    elsif user_score >= 18 
        major = $humanities_major.sample
        # return "You are a humanities major "
    end
    return major
end

# puts "running check_major #{check_major(user_score)}"
puts "Your chosen major is #{check_major(user_score)}"

# have to command click link to get it to save 
# puts "The link: https://www.smith.edu/" 