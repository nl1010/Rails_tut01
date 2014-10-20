class Article < ActiveRecord::Base
	validates :title, presence:true,
	length:{ minimum: 5 } 
	#validtate target : title ,parameter:presence as true,minimum length for 5
end
