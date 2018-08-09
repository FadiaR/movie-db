require 'themoviedb-api'
require 'dotenv'
Dotenv.load('.env')

class SearchMovie

  def search
     Tmdb::Api.key("KEY_HERE")

    @search = Tmdb::Search.new
    @search.resource('person') # determines type of resource
    @search.query('samuel jackson') # the query to search against
    @search.fetch # makes request
  end
end
