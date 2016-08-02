class CreateTeacherSubjects < ActiveRecord::Migration
  def change
    create_table :teachers_subjects, id:false do |t|
      t.belongs_to :teacher, index: true, foreign_key: true
      t.belongs_to :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
