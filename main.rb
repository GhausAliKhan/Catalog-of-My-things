require_relative 'app'

class Main
  def initialize
    @app = App.new
    prompt
  end

  def prompt
    puts 'Catalogue of My things!'
    loop do
      display_options
      option = take_input
      @app.process_option(option)
      break if option == 13
    end
  end

  def display_options
    puts 'Please choose one of the options: '
    puts '01 - List all books'
    puts '02 - List all music albums'
    puts '03 - List all movies'
    puts '04 - List all games'
    puts '05 - List all genres (e.g: "Comedy", "Thriller")'
    puts '06 - List all labels (e.g: "Gift", "New")'
    puts '07 - List all authors (e.g: "Stephen King")'
    puts '08 - List all sources (e.g: "From a Friend", "Online shop")'
    puts '09 - Add Book'
    puts '10 - Add a Music Album'
    puts '11 - Add Movie'
    puts '12 - Add a Game'
    puts '13 - Exit'
  end
end

def take_input
  print 'Enter a number: '
  option = gets.chomp.to_i
  while option.nil? || option < 1 || option > 13
    puts 'Please enter a number between 1 and 13!'
    print 'Enter a number: '
    option = gets.chomp.to_i
  end
  option
end

Main.new
