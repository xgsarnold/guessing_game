def prompt
  puts "I'm thinking of a number from 1 to 100. What is it?"
  gets.chomp
end

def countdown(number=5)
  puts "Self destruct in"
  number.times do |i|
    puts "#{number-i} ..."
    sleep 1
  end
  puts "I'm just screwing with you. The answer was "
end

def check(attempts, guess)
  attempts.include?(guess)
end

random = rand(1..100)
guessing_record = []
incomplete = true
count = 0

while incomplete
  guess = prompt.to_i
  count += 1
  if guess == random
    puts "You are correct!"
    incomplete = false
  elsif count >= 5
    incomplete = false
    countdown(6)
    puts random.to_s
  elsif check(guessing_record, guess)
      puts "Did you stutter? I'm counting that anyway."
  elsif guess < random
    puts "Try higher."
  elsif guess > random
    puts "Try lower."
  end
  guessing_record << guess
end
