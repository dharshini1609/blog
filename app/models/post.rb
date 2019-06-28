class Post < ApplicationRecord
	self.table_name = "posts"

        belongs_to :user
        has_many :comment

        scope :addpost, -> (texttitle,textInput,id){
        	temp = Post.new(title: texttitle, content: textInput , user_id:id )
        	temp.save
         }


        scope :displayall, -> {
        	temp1 = Post.order(created_at: :desc)
 
        }
        
        scope :displayuserprofile, ->(id){
            value =  Post.order(created_at: :desc).where(user_id: id) 
        }



       scope :finddate, -> (created_at){
           temp = Date.strptime(created_at, "%d/%m/%Y") if created_at.present?
     
 
        }

        scope :getdatetime, -> (id,post_id){
        datetime =  Post.select(:updated_at).where(user_id: id,id: post_id)

        }

        # scope :addcomment, -> (content,id){
        #     temp = Post.new(content: content , user_id:id )
        #     temp.save
        # }
end
