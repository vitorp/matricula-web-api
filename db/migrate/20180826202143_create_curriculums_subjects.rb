class CreateCurriculumsSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculums_subjects do |t|
      t.references :curriculum, foreign_key: true
      t.references :subject, foreign_key: true
      t.integer :enforcement, default: 0

      t.timestamps
    end
  end
end
