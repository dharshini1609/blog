class User < ApplicationRecord
	self.table_name = "users"
	has_many :posts
	
		scope :valid, ->(uname , u_pwd){
			where(user_name: uname,password:u_pwd)
		}
		
	    scope :check, ->(uname){
			where(user_name: uname)
		}



		scope :adding, -> (uname,u_pwd){
        record = User.new(user_name: uname, password: u_pwd)
        record.save

        }

        scope :getusername, -> (id){
        username = User.select("user_name").find(id)

        }

        scope :getuserid, -> (idnum){
        userid = User.select("id").where(user_name: idnum)

        }

	
end
