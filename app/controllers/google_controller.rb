class GoogleController < ApplicationController
	def index
		@response = HTTParty.get('https://www.google.co.in/search?q=dhomm')
		# binding.pry
	end
end
