class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.integer :student
      t.belongs_to :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
