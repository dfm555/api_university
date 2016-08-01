class CreateJoinTableCareerSubject < ActiveRecord::Migration
  def change
    create_join_table :careers, :subjects, id:false do |t|
      t.index [:career_id, :subject_id]
      t.index [:subject_id, :career_id]
    end
  end
end
