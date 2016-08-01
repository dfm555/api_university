class CreateTeacherCareers < ActiveRecord::Migration
  def change
    create_table :teacher_careers do |t|
      t.integer :teacher
      t.belongs_to :career, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
