class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.string :course_name
      t.integer :marks
      t.integer :student_id
      t.integer :lecturer_id
    end
  end
end
