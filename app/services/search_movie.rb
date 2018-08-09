require 'dotenv'
require 'themoviedb'

class SearchMovie

  def search
    config = Tmdb::Api.key("KEY_HERE")
    Tmdb::Api.language("fr")

    @search = Tmdb::Search.new
    @search.resource('person') # determines type of resource
    @search.query('samuel jackson') # the query to search against
    @search.fetch # makes request
  end
end
