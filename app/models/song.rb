class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
   if !Artist.first
    x = Artist.create(:name=>'Drake')
    x.songs << self
   end
   Artist.first.songs << self
  end
end

