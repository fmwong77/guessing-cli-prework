# Code your solution here!
require 'pry'
def run_guessing_game
  random_number = rand(6) + 1
  prompt_user()
  user_input = get_user_input()
  
  if user_input == "exit"
    puts "Goodbye!"
  elsif user_input != random_number.to_s
    puts "/The computer guessed #{random_number}./"
  elsif user_input == random_number.to_s
    puts "/You guessed the correct number!/"
  else
    puts "Invalid"
  end
end

def prompt_user
  puts "Guess a number between 1 and 6."
end

def get_user_input
  gets.chomp
  binding.pry
end
