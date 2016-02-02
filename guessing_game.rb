def prompt
  puts "Enter a whole number between 0 and 101."
  gets.chomp = guess
  return
end

range_pool = []
guessing_record = []
incomplete = true
count = 0


While incomplete
  puts "Enter a whole number between 0 and 101."
  guess = gets.chomp
  guess.to_i!
  guessing_record << guess
  count += 1
    if count => 5
      puts "Self destruct in ..."
      puts "I'm just screwing with you. The answer was" + random_integer.to_s
      break
    elsif count < 5
      puts "You have " + count.to_s + " chances left."
    elsif guess == guessing_record
      puts "Did you stutter? I'm counting that anyway."
    else guess.to_i == random_integer
      puts "You are correct!"
    end
  end
end
