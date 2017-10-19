class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :vanity_name
      t.string :name

      t.timestamps
    end
  end
end
