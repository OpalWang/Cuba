class Feedback < ActiveRecord::Base
	include Shield::Model
	attribute :telephone
	attribute :massage
	STATUS={
		"unread"=>"未读",
		"read"=>"已读"
	}

end