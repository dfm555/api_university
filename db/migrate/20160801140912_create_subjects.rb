class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :code
      t.string :name
      t.integer :credits, default: 0
      t.string :cycle
      t.string :room
      t.text :description
      t.integer :hours, default: 0

      t.timestamps null: false
    end
  end
end
