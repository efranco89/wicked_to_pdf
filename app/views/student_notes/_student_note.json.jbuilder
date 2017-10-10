json.extract! student_note, :id, :student_id, :note_one, :note_two, :note_three, :report_notes, :created_at, :updated_at
json.url student_note_url(student_note, format: :json)
