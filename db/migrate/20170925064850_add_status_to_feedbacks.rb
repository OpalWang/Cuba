class AddStatusToFeedbacks < ActiveRecord::Migration
  def change
  	add_column :feedbacks, :status, :string, :default=>"unread"
  end
end
