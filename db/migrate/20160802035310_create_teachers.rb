class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :code
      t.string :identification
      t.string :full_name
      t.date :date_of_birth
      t.string :email
      t.integer :office
      t.integer :phone_number
      t.decimal :amount_hour, default: 0.0

      t.timestamps null: false
    end
  end
end
