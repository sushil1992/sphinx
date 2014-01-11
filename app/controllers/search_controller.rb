class SearchController < ApplicationController
	require 'nokogiri'
	require 'open-uri'
	autocomplete  :title
  def index
  	# if @doc
  	# 	@requ=@doc
  	# end
  	if params[:search]
  		@requ=params[:search]
  		#@requ=@requ+"movie"
  		#@doc=Nokogiri::HTML(open("https://www.google.co.in/search?q=#{@requ}"))
	  	@query=Movie.search Riddle::Query.escape("#{@requ}"),:star => true,:field_weights => 
	  	{ 
	  		:title => 30,
	  		:year => 15,
	  		:catgory => 14,
	  		:director => 10,
	  		:cast => 8,
	  		:genre => 6

	  	}
	  	# if @doc
	  	# @doc=@doc.css('i')[0].content
	  	# # if @doc
	  	# @doc="Did You Mean :- " + @doc
		  #end
		# end
	  else
	  	@query=[]
	  end
  end

end
