class ArticlesController < ApplicationController

	#define a new action called ''
	def new 
	end

	def create 
		#render plain: params[:article].inspect
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

		#show relative articles on the page , and also we need create&edit show.html.erb in view folder 
	def show 
		@article = Article.find(params[:id]) #我们调用 Article.find 方法查找想查看的文章，传入的参数 params[:id] 会从请求中获取 :id 参数。我们还把文章对象存储在一个实例变量中（以 @ 开头的变量），只有这样，变量才能在视图中使用。
	end

	def index 
		@articles = Article.all
	end
	




	private  #private method , use to defence the attact from outside ,make the code more secure
		#ALL CODE BELOW ARE PRIVATE 
		def article_params
			params.require(:article).permit(:title, :text) #keyword 'permit' allows use the characteristics of 'title' and 'text'
		end

	end 




