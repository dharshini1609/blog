class Session < ApplicationRecord
	self.table_name = "sessions"
	scope :addvalue, -> (key,value){
        record = Session.new(session_id: key, user_details: value)
        record.save

        }
	
end
