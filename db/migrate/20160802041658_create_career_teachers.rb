class CreateCareerTeachers < ActiveRecord::Migration
  def change
    create_table :careers_teachers, id:false do |t|
      t.belongs_to :career, index: true, foreign_key: true
      t.belongs_to :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
