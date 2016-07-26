class PagesController < ApplicationController
	def index
		@category = Category.all
	end
end