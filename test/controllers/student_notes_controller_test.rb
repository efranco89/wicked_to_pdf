require 'test_helper'

class StudentNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_note = student_notes(:one)
  end

  test "should get index" do
    get student_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_student_note_url
    assert_response :success
  end

  test "should create student_note" do
    assert_difference('StudentNote.count') do
      post student_notes_url, params: { student_note: { note_one: @student_note.note_one, note_three: @student_note.note_three, note_two: @student_note.note_two, report_notes: @student_note.report_notes, student_id: @student_note.student_id } }
    end

    assert_redirected_to student_note_url(StudentNote.last)
  end

  test "should show student_note" do
    get student_note_url(@student_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_note_url(@student_note)
    assert_response :success
  end

  test "should update student_note" do
    patch student_note_url(@student_note), params: { student_note: { note_one: @student_note.note_one, note_three: @student_note.note_three, note_two: @student_note.note_two, report_notes: @student_note.report_notes, student_id: @student_note.student_id } }
    assert_redirected_to student_note_url(@student_note)
  end

  test "should destroy student_note" do
    assert_difference('StudentNote.count', -1) do
      delete student_note_url(@student_note)
    end

    assert_redirected_to student_notes_url
  end
end
