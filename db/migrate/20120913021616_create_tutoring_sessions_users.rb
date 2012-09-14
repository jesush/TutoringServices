class CreateTutoringSessionsUsers < ActiveRecord::Migration
  def change
  	create_table :tutoring_sessions_users do |t|
  		t.integer :tutoring_session_id
  		t.integer :user_id
  	end
  end
end
