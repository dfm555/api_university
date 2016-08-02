class CreateStudentSubjects < ActiveRecord::Migration
  def change
    create_table :students_subjects, id:false do |t|
      t.belongs_to :student, index: true, foreign_key: true
      t.belongs_to :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
