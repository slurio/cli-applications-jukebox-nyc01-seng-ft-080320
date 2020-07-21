require "pry"


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(file)
  file.each_with_index do |song, index|
    song = "#{index + 1}. #{song}"
    puts song
  end
end


def play(file)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  output = "Invalid input, please try again"
  file.each_with_index do |song, index|
    if user_input == song or user_input == (index + 1).to_s
      output = song
    end
  end
  if output == "Invalid input, please try again"
    puts output
  else
    puts "Playing #{output}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(file)
  puts "Please enter a command:"
  user_input = gets.strip
  while user_input != "exit"
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.strip
    elsif user_input == "list"
      list(file)
      puts "Please enter a command:"
      user_input = gets.strip
    elsif user_input == "play"
      play(file)
      puts "Please enter a command:"
      user_input = gets.strip
    end
  end
  exit_jukebox
end
