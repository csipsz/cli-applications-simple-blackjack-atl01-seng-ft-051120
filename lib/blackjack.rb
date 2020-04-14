require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = rand(1..11)
  return random
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  prompt =  "Type 'h' to hit or 's' to stay"
  puts prompt
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def invalid_command
  command = 'Please enter a valid command'
  puts command
end

def hit?(current_total)
  prompt_user
  choice = get_user_input
  if choice == "h"
    current_total += deal_card
  elsif choice == 's'
    current_total
  else 
    invalid_command
    prompt_user
    get_user_input
  end
  current_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
  total = hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
    
