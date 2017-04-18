require 'pry'
lotto = rand(100)

puts lotto
play = "Pick a number from 1 to 100."

def lower(guess, lotto)
  guess < lotto
end

def higher(guess, lotto)
  guess > lotto
end

def winner(guess, lotto)
  guess == lotto
end

stored_guesses = []

def repeated_guess(stored_guesses, guess)
  stored_guesses.include?(guess)
end

count = 0
5.times do
  puts play
  guess = gets.chomp.to_i
  if repeated_guess(stored_guesses, guess)
    puts "Please do not repeat the same number twice."
    count +=1
    stored_guesses << guess
  elsif lower(guess, lotto)
    puts "Too low."
    count +=1
    stored_guesses << guess
  elsif higher(guess, lotto)
    puts "Too high."
    count +=1
    stored_guesses << guess
  elsif winner(guess, lotto)
    puts "You win!"
    break
  end
end
puts "You've exhausted your game plays. You lose."
