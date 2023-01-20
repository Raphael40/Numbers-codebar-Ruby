turns = 0
correct = 0
wrong = 0
start = Time.now
scores = []

while turns < 10
    x = Random.rand(0..10)
    y = Random.rand(0..10)
    turns += 1
    
    puts "what is #{x} + #{y}?"
    answer = gets.chomp.to_i 
    puts "#{x} + #{y} = #{answer}"
    
    if x + y == answer
        puts "Right!"
        correct += 1
    else
        puts "Wrong :(" 
        wrong += 1
    end
end

puts "You got #{correct} right, #{wrong} wrong which is #{(((correct * 1.0) / turns) * 100).to_i}%" 

duration = Time.now - start

puts "Your total time was #{duration.round} seconds"

puts "What is your name?"

name = gets.chomp

File.open("scores.txt", "a") do |file|
    file.write("#{name}, #{duration.round} #{correct}/10, \n")
end

File.open("scores.txt", "r") do |file|
    while entry = file.gets
        scores << entry.split(",")
      end
end

def sorted(arr)
    arr.
end

puts "These are the top scores: #{sorted(scores)}"