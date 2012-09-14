class AddProfessorIdToCourses < ActiveRecord::Migration
  def up
    add_column :courses, :professor_id, :integer
  end

  def down
  	remove_column :courses, :professor_id
  end
end
