require_relative 'book/addbook'
require_relative 'book/displaybook'
require_relative 'book/displaylabel'
require_relative 'book/load_book_label'
require_relative 'book/preservedata'
require_relative 'music/addmusic'
require_relative 'music/displaymusic'
require_relative 'music/displaygenre'
require_relative 'music/storage'

module Modules
  include AddBook
  include DisplayBook
  include DisplayLabel
  include PreserveData
  include LoadData
  include AddMusic
  include DisplayMusic
  include DisplayGenres
  include Storage

  def save_collections
    save_book
    save_label
    save_music
  end

  def load_collections
    load_labels
    load_books
    load_genres
    load_music_albums
  end
end
