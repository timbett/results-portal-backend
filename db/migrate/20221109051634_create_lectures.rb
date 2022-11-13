class CreateLectures < ActiveRecord::Migration[6.1]
  def change
    create_table :lectures do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
