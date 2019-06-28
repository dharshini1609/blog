require 'digest/md5'
class BlogpageController < ApplicationController
	$idnum = "";
skip_before_action :verify_authenticity_token

def displaylogin

	render :login
end


def displaysignup
	render :signup
	
end
def displayblog 
	render :viewposts

end 
def viewposts

	@posttitlecontent =  Post.displayall().to_json
	@posttitlecontent = JSON.parse @posttitlecontent

	@data = @posttitlecontent[0]['created_at']

	puts"yourvalueishere#{@data}"


	render :viewposts
end
def viewprofile
	# @confirm = User.check(params['id']).to_json
	# @confirm = JSON.parse @confirm
    @id = User.getuserid($idnum)
   
	@profiledetails = Post.displayuserprofile(@id).to_json
	@profiledetails = JSON.parse @profiledetails
     
    
    render :viewprofileofuser

	# @data = @profiledetails[0]['created_at']
	# render :viewprofileofuser
end




def checklogininfo
    
	hashing = Digest::MD5.hexdigest(params['u_pwd']);
	@result = User.valid(params['uname'] , hashing).to_json

	@result = JSON.parse @result 
	$idnum = params['uname']
	@confirm = User.check(params['uname']).to_json
	@confirm = JSON.parse @confirm
	
	puts 	"1234567890`1234567890 #{params['uname']}"
	

     # if params['uname'].blank? && params['u_pwd'].blank?
     #   render json: {:code=>false,:message=>"DONT LEAVE BLANK"}.to_json
         
    	if @confirm.length == 0 
    	   render json: {:code=>false,:message=>"SIGNUP NEW USER"}.to_json


    elsif @confirm.length > 0 && @result.length == 0
    	  render json: {:code=>false,:message=>"INCORRECT PASSWORD PLEASE TRY AGAIN"}.to_json

    else
    	
          render json:{:code=>true,:message=>"welcome"}.to_json
          # redirect_to :controller => 'blogpage', :action => 'displayblog' 
                   
    end

    	session[:user_name] = params['uname']
    	@value = session[:user_name]
		session[:id] = request.session_options[:id]
		@key = session[:id]
    	Session.addvalue(@key , @value)
	
end
def signupfunction
	
	@add = User.find_by_user_name(params['uname']).to_json
	@add = JSON.parse @add
 # puts "DDDDDDDDDDDDDDDDDDDDDDDDDD #{params['uname']}"

	if @add.present?
	render json: {:code=>false,:message=>"EXISTING USER PLEASE LOGIN"}.to_json
   
	else
		hashing = Digest::MD5.hexdigest(params['u_pwd']);
	User.adding(params['uname'] , hashing).to_json
	# byebug
	 # puts "wywullllllllwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwtydone"
    redirect_to :controller => 'blogpage', :action => 'displaylogin' 
   
    # render :viewposts
end
end





def savepagefunction
	@confirm = User.check(params['id']).to_json
	@confirm = JSON.parse @confirm
	@id = @confirm[0]['id']
	puts ";;JHFEVGYYYYYYYYYYYYYYYYYR#{params['id']}"
 
  


    @CHECKK = Post.addpost(params['texttitle'] , params['textInput'] , @id).to_json
    
   

end
def saveuserposts

 # @idval = User.getuserid($idnum)
 # @id=User.find_by_id()[:id]
 @confirmm = User.check(params['name']).to_json
 @confirmm = JSON.parse @confirmm
 @id = @confirmm[0]['id']
 puts ";;JHFEVGYYYYYYYYYYYYYYYYYR#{params['id']}"

 
 @check = Post.addpost(params['texttitlefirst'] , params['textInputfirst'] , @id)
 byebug
 


end

def viewpostpage
	# @test = User.joins(:posts).to_json

	# @test = Post.joins(:user).to_json
	# @test = JSON.parse @test
	# @posttitlecontent =  Post.displayall()

	# @posttitlecontent.each do |i|
 #     	@id = i['user_id']
	# 	@username = User.getusername(@id).to_json
	# 	@title = i['title']
	# 	@content = i['content']
		# res.send({ name:@username , head:@title , text:@content})
		# puts "yourvalueishere #{@id}"
		 # puts "yourvalueishere #{@username}"
		# puts "yourvalueishere #{@title}"
		# puts "yourvalueishere #{@content}"
		
		render json: {:code=>true,:message=>"SUCCESS"}.to_json
		
         
	
	
	 # puts ";;JHFEVGYYYYYYYYYYYYYYYYYR#{@id}"
	# @test = JSON.parse @test


end
# def savecommentfunction


# @comment = User.check(params['id']).to_json
# 	@comment = JSON.parse @comment
# 	@id = @comment[0]['id']
# 	puts ";;JHFEVGYYYYYYYYYYYYYYYYYR#{params['id']}"


# byebug

#     # @savecomment = Post.addcomment(params['content'] , @id).to_json
    
   



# end
def userprofile
	
    # puts "qqqqqqqqqqqqqqqqqqqqqqqqqqqqq#{params['id']}"
	
	 @id = params[i]['user_id']
	# @username = User.getusername(@id).to_json
	# @username = JSON.parse @username
	# @post_date = i["id"]
 #   	@updated_at = Post.getdatetime(@id,@post_date)
 #    @datetimevalue = @updated_at[0]['updated_at']
	# @title = i['title']
 #    @content = i['content']
     render :viewprofileofuser

     


end
helper_method :userprofile
end
