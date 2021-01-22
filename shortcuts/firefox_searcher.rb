require 'launchy' # A realy nice Gem which allow me to open the browser !

#Create a method to check if the user has specify an input
def check_if_user_gave_input
  abort("search: missing input") if ARGV.empty? 
end
# Gonna une the method just above and get the user input
def get_search_name
  check_if_user_gave_input
  return search_name = ARGV
end

#This method will search and add a '+' between the input
def search(name)
  Launchy.open(("https://duckduckgo.com/?t=canonical&q=")+name.join('+'))
  #feel free to change to your favorite browser :) ex: "https://www.google.com/search?q=" 
end

search(get_search_name)


