class CreateRemarks < ActiveRecord::Migration[6.1]
  def change
    create_table :remarks do |t|
      t.string :remarks
      t.string :name
      t.string :date
    end
  end
end
