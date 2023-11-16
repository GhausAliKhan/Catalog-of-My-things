require_relative 'classes/movie/movie'
require_relative 'classes/movie/source'
require_relative 'classes/book/book'
require_relative 'classes/book/label'
require_relative 'classes/music/music_album'
require_relative 'classes/music/genre'
require_relative 'classes/games/game'
require_relative 'classes/games/author'
require_relative 'modules/modules'

class App
  attr_accessor :movies, :books, :label

  include Modules

  def initialize
    @movies = []
    @sources = []
    @books = []
    @label = []
    @genres = []
    @music_albums = []
    @games = []
    @authors = []
    load_collections
  end

  def process_option(option)
    case option
    when 1 then display_books
    #   when 2 then display_all_music_albums
    #   when 3 then display_all_movies
    #   when 4 then display_all_games
    #   when 5 then display_all_genres
    when 6 then display_labels
    #   when 7 then display_all_authors
    #   when 8 then display_all_sources
    when 9 then add_book
    #   when 10 then add_music
    #   when 11 then add_movie
    #   when 12 then add_game
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def save_and_exit
    save_collections
    exit
  end
end
