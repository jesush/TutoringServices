class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick_name
      t.string :user_type
      t.string :classification
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
