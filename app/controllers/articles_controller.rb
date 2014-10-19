class ArticlesController < ApplicationController

	#define a new action called ''
	def new 
	end

	def create 
		render plain: params[:article].inspect
	end 

end
