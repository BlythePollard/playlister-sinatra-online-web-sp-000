class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs
    has_many :artists, through: :songs
    has_many :songs, through: :song_genres

    def slug
        name.parameterize
     end
 
     def self.find_by_slug(slug)
         self.all.find{|name| name.slug == slug}
     end
end