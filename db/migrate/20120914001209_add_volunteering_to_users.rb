class AddVolunteeringToUsers < ActiveRecord::Migration
  def change
    add_column :users, :volunteering, :boolean
  end
end
