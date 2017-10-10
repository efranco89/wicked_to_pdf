class CreateStudentNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :student_notes do |t|
      t.integer :student_id
      t.float :note_one
      t.float :note_two
      t.float :note_three
      t.text :report_notes

      t.timestamps
    end
  end
end
