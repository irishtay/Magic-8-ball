#Magic 8 ball

@user_questions = []
@user_answers = [
   "It is certain",
   "Yes definitely",
   "You may rely on it",
   "As I see it, yes",
   "Most likely",
   "Outlook good",
   "Yes",
   "Signs point to yes",
   "Reply hazy try again",
   "Ask again later"
  ]

  def view_answers
    print @user_answers
    sleep (1)
    print_menu
  end

  def add_answer
    puts "What would you like to add?"
    answer = gets.chomp
    @user_answers << answer
    puts "Add another? (Y/N)"
      case gets.chomp.downcase
      when 'y'
        add_answer
      else
        print_menu
      end
  end

  def ask_question
    puts "What is thy Question?!"
    print
    user_answer = gets.chomp.downcase
    if /and\si/.match(user_answer)
        sleep (3)
        puts "WILL ALWAYS LOVE YOUUUUUUU!"
        sleep (1)
        print_menu
      end
  sleep (3)
    puts @user_answers.sample

    puts "Another Question? (Y/N)"
    case gets.chomp.downcase
      when 'y'
       ask_question
      else
        print_menu
      end
    print_menu
  end

  def menu
    choice = gets.strip.to_i
    case choice
    when 1
      ask_question
    when 2
      add_answer
    when 3
      view_answers
    end
  end


  def print_menu
    puts "Welcome to the 8-ball! Shake it up!"
    puts "1)Ask a question:"
    puts "2)Add an answer to the 8-ball"
    puts "3)View Answers"
    menu
  end

print_menu
