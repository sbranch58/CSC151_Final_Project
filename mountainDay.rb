# lobal variable for determining major result

$score = []

#choices for visiting the apple orchard 
def orchardVisit() 
    puts "Welcome to the orchard, we are glad you are here! We have a wide range of fun activities for your enjoyment. What do you want to do?"
    orchardOptions =" 
     1. Pick apples
     2. Visit the farm
     3. Eat donuts"
    puts orchardOptions
    choice = gets.chomp
    choice = choice.to_i
    
    case choice #switch statement
    when 1
      $score << choice
      puts "You pick bushels of apples that you plan to make into treats!" 
    when 2
      $score << choice
      puts "The orchard has a adjacent farm and you help out with the feeding of animals"
    when 3
      $score << choice
      puts "The orchard has homemade apple cider donuts - lets have a picnic" 
    end
  end
  
  #choices for doing baking with your house 
  def houseBaking() 
    puts "You got the apples, it is now time to make a sweet treat! What will your house make? Pick a number"
    bakingOptions ="
     1. Apple Pie!
     2. Apple Crumble!
     3. Apple Tarts"
    puts bakingOptions
    choice = gets.chomp
    choice = choice.to_i
    
    case choice  #switch statement
    when 1
      $score << choice
      puts "Your amazing baking skills made 3 perfect pies"
    when 2
      $score << choice
      puts "You can't go wrong with apple crumble and vanilla ice cream"
    when 3
      $score << choice
      puts "Yummy bite-size tarts for everyone" 
    end
  end
  
  #choices for doing hiking with your house 
  def outdoorHiking()
    puts "You got your hiking boots, hat, and energizing snacks! What location will you choose for hiking? Pick a number"
    hikingOptions ="
     1. Paradise Pond
     2. Holyoke State Park in Holyoke
     3. Robert Frost Trail in Amherst"
    puts hikingOptions
    choice = gets.chomp
    choice = choice.to_i
    
    case choice #switch statement
    when 1
      $score << choice
      puts "Somewhere local...after the hiking, lets go kayaking"
    when 2
      $score << choice
      puts "30 miles of blazed trails...Holyoke State Park is the place"
    when 3
      $score << choice
      puts "Visit the beauty  at Amherst's Robert Frost Trail" 
    end
  end
  
  #Introduction to mountain day 
  puts 'Ringing the bells!'
  puts 'You wake up to the sound of ringing bells...its Mountain Day! What are your plans on this glorious day? Pick a number'
  
  threeOptions ="1. Orchard
  You want to go pick some apples..head to the orchard!
  
  2. Baking
  Your house wants to do some community cooking with all the apples!
  
  3. Hiking
  The weather is so nice...lets go hiking!" ;
  
  puts threeOptions
  while true
    choice = gets.chomp
    choice = choice.to_i
    case choice  #switch statement for the options
    when 1
      $score << choice
      orchardVisit()
      break
    when 2
      $score << choice
      houseBaking()
      break
    when 3
      $score << choice
      outdoorHiking()
      break
    else
       puts "Sorry, please enter a given number."
    end
  end
