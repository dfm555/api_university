class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :code
      t.string :identification
      t.string :full_name
      t.date :date_of_birth
      t.string :email
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
