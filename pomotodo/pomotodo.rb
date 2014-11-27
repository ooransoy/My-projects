puts "You need to run 'sudo apt-get install sox' for sound notifications to work"
puts 'You need to run this program with bash'

def soundnotify
  system './notificationsound.sh >/dev/null 2>/dev/null'
end

puts '1 pomodoro (the max time you can work without taking a break) = ? minutes'
pomodoro = gets.to_i
tasknum = 1
tasks = {}
while true
  puts "Name of item ##{tasknum}:"
  task = gets.chomp
  puts "Time (in pomodoros) of item ##{tasknum}:"
  time = gets.to_i
  tasks[task] = time
  puts "You have #{tasknum} tasks and #{tasks.values.inject(:+)} pomodoro(s). Do you want to continue adding
tasks? (Yn)"
  cont = gets.chomp
  break if cont == 'n'
  tasknum += 1
end

puts 'Press ENTER to start'
gets

tasks.each do |i, t|
  puts "Current task: #{i}\nTime: #{t}"
  sleep t * pomodoro # Testing purposes!     * 60
  puts "Done! Take a break."; soundnotify
  sleep 5 #* 60
  puts "Break is finished!"; soundnotify
end