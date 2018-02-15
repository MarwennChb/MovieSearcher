class SearchMovie

	def initialize(search)
		
		@search = search

	end

	def perform
		
		log_in_movdb
		search_result

	end

	def log_in_movdb
		
		Tmdb::Api.key(ENV['API_KEY'])

	end

	def search_result
		
		@search_result = Tmdb::Search.movie(@search).results

   	@search_result.each do |movie|
       	directed(movie)
   	end

	end

   def directed(movie)

        Tmdb::Movie.director(movie.id).each do |director|
            movie[:director]    = director.name        
        end  

   end

end