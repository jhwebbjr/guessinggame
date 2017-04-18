lotto = rand(100)

puts lotto
play = "Pick a number from 1 to 100."
guess = gets.chomp.to_i
# puts guess

def lower(guess, lotto)
  guess < lotto
end

def higher(guess, lotto)
  guess > lotto
end

def winner(guess, lotto)
  guess == lotto
end

count = 0
5.times do
  puts play
  guess = gets.chomp.to_i
  if lower(guess, lotto)
    puts "Too low."
    count +=1
  elsif higher(guess, lotto)
    puts "Too high."
    count +=1
  elsif winner(guess, lotto)
    puts "You win!"
    break
  else
    puts "You have exhausted your game plays."
  end
end
