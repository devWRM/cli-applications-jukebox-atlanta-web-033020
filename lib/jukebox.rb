# Add your code here
require 'pry'

def help
  
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
  
end




def list(songs)
  
  songs.each_with_index do |song, i_song|
    puts "#{i_song + 1} #{song}"
  end
 
end
 
 
 
 


def play(songs)
  
  puts "Please enter a song name or number:"
  u_input = gets.strip
  
  songs.each_with_index do |song, i_song|
    
    if u_input == song || u_input.to_i == (i_song + 1)
      puts "Playing #{song}"
    else
      
    end
    
  end
  
end




def exit_jukebox
  puts "Goodbye"
end




def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  # while input != "exit" do
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input =="help"
      help
    elsif input == "exit"
      exit_jukebox
    end
  # end
    
 #exit_jukebox
  
end



