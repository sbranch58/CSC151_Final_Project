
$score = []

#choices for visiting the apple orchard 
def sleepIn()
    puts "Move-in was so tiring that you completely ignored the noise and went to bed. Yet before going to bed..."
    sleep_options =" 
     1. You drink a cup of chamomile tea
     2. You make sure you prepare your backpack and fit for the 1st day of class
     3. You go really quick to the CC and pick up your convocations shirt"
    puts sleep_options
    choice = gets.chomp
    choice = choice.to_i
    
    case choice #switch statement
    when 1
      $score << choice
      puts "There's nothing better for a good night of sleep that some tea. You find a fellow smithie preparing one for themselves in your house kitchen!" 
    when 2
      $score << choice
      puts "Going to sleep with the re-assurance that you are ready for class makes you look refreshed in all your classes"
    when 3
      $score << choice
      puts "You got there just in time before they ran out of your size, yay, your first smith shirt!" 
    end
  end
  
  #choices for doing baking with your house 
  def getLost() 
    puts "Even though is a small campus, with the crowd of convocation, you find yourself unable to find your house when coming back from CVS. What to do?"
    getLost_options ="
     1. Call Campus Safety
     2. You decide to be brave and approach a group of students
     3. You wander around with google maps until you find your house"
    puts getLost_options
    choice = gets.chomp
    choice = choice.to_i
    
    case choice  #switch statement
    when 1
      $score << choice
      puts "Smart. You can never go wrong with calling campo. You're so brave"
    when 2
      $score << choice
      puts "Best decision ever. You made new friends who invited you to dinner later!"
    when 3
      $score << choice
      puts "Maybe not the fastest solution, but a resourceful one" 
    end
  end
  
  #choices for doing hiking with your house 
  def attendConvocation()
    puts "Against the unexpected, you decide to join the crowd and be part of Convocation. You got the glitter and you are ready to scream, what else?"
    attend_options = "
        1. You get to JMG with your house and then you have some fun time at the carnival
        2. You feel a little bit overwhelmed, so you decide to step back of JMG and go to the barbecue to chill
        3. You found some upperclassmen friends, they invite you to pre-game and you got drunk. You ended up joining Kmac on stage and dancing with her!"
    puts attend_options
    choice = gets.chomp
    choice = choice.to_i

 def toodrunk()
    puts "You truly got into the spirit of the last day of vacations and kinda drank too much before dinner time. Be wise making choices in this condition..."
    drunk_options = "
        1. You still attend convocation at JMG with the help of your friends.
        2. You decide to stay back and eat some carbs and water to recover.
        3. Don't remember anything, other than the next day where you are trying to get to class with a bad headache"
  
    puts drunk_options
    choice = gets.chomp

    case choice.to_i
    case choice #switch statement
    when 1
      $score << choice
      puts "Good luck!"
    when 2
      $score << choice
      puts "Smart choice, first take care of yourself"
    when 3
      $score << choice
      puts "Stay hydrated!" 
    end
  end
  
  #Introduction to mountain day 
  puts 'Sophomoresss, juniorrrs, seniorrs...! Welcome to Convocation. A time to celebrate for some the beggining of a new era, for others, the end of one. The best Smith tradition to showcase the power of a liberal arts education and the unique community of Smith College'
  puts 'Its your first Convocation, so much to do, so what do you do?'
  
  fouroptions ="
  Pick a number: 
  1. Sleep in: You're tired, maybe next year you might join.
  2. Get lost: What an overwhelming day, campus is so big, you get lost!
  3. Attend Convocation: YOLO, let's do it
  4. Too drunk for it: You got drunk before it started" ;
  
  puts fouroptions
  while true
    choice = gets.chomp
    choice = choice.to_i
    case choice  #switch statement for the options
    when 1
      $score << choice
      sleepIn()
      break
    when 2
      $score << choice
      getLost()
      break
    when 3
      $score << choice
      attendConvocation()
      break
    when 4
      $score << choice
      toodrunk()
      break
    else
       puts "Sorry, please enter a given number."
    end
  end