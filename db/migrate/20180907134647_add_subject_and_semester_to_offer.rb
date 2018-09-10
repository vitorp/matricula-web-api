class AddSubjectAndSemesterToOffer < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :subject, foreign_key: true
    add_reference :offers, :semester, foreign_key: true
  end
end
