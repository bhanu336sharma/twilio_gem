class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_no
      t.string :city
      t.string :gender
      t.text :description

      t.timestamps
    end
  end
end
