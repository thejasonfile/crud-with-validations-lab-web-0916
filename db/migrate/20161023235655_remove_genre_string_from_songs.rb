class RemoveGenreStringFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :genre_string, :string
  end
end
