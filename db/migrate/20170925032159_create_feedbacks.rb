class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
    	t.string :telephone
    	t.string :message
    	t.string :email
    	t.string :name
    	t.timestamps
    end
  end
end
