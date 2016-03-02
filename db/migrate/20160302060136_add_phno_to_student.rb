class AddPhnoToStudent < ActiveRecord::Migration
  def change
    add_column :students, :phno, :integer
  end
end
