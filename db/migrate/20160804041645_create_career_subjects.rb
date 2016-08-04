class CreateCareerSubjects < ActiveRecord::Migration
  def change
    create_table :career_subjects, id:false do |t|
      t.belongs_to :career, index: true, foreign_key: true
      t.belongs_to :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
