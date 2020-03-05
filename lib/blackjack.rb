def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(n)
  # code #display_card_total here
  puts "Your cards add up to #{n}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method= gets.chomp
end

def end_game(n)
  # code #end_game here	  
  if n>21
    puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  sum= deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(x)
  # code hit? here
  prompt_user
  case get_user_input
  when "s"
    x
  when "h"
    x += deal_card
  when others
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
    welcome
  total = initial_round
  until total > 21
    total = hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
    
