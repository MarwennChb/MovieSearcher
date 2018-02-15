class MoviesController < ApplicationController
  
  def index
  	
  end



  def search

  	@search = search_params[:content]

  	@resultat_final = SearchMovie.new(@search).perform

  end

	private 

	def search_params

		params.require(:movies).permit(:content)

	end


end
