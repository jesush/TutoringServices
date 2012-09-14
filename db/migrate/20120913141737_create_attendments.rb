class CreateAttendments < ActiveRecord::Migration
  def change
    create_table :attendments do |t|
      t.integer :user_id
      t.integer :tutoring_session_id

      t.timestamps
    end

    add_index :attendments, [:user_id, :tutoring_session_id], :unique => true
  end
end
