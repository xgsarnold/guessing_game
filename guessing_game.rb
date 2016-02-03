def prompt
  puts "I'm thinking of a number between 0 and 101. What is it?"
  return gets.chomp
end

def countdown
  puts "Self destruct in 5 ..."
  sleep 1
  puts "4 ..."
  sleep 1
  puts "3 ..."
  sleep 1
  puts "2 ..."
  sleep 1
  puts "1 ..."
  sleep 1
  puts "I'm just screwing with you. The answer was "
end

def check(testing, guess)
  return testing.include?(guess)
end

random = rand(1..100)
guessing_record = []
incomplete = true
count = 0
#puts "random is #{random}"

while incomplete
  guess = prompt.to_i
  count += 1
  if guess == random
    puts "You are correct!"
    incomplete = false
  elsif count >= 5
    incomplete = false
    countdown
    puts random.to_s
  elsif check(guessing_record, guess)
      puts "Did you stutter? I'm counting that anyway."
  elsif guess < random
    puts "Think higher."
  elsif guess > random
    puts "Think lower."
  end
  guessing_record << guess
end
