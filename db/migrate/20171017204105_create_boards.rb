class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.text :embed
      t.string :name
      t.integer :course_id
      t.integer :kind

      t.timestamps
    end
  end
end
