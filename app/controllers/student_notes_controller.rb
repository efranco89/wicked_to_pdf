class StudentNotesController < ApplicationController
  before_action :set_student_note, only: [:show, :edit, :update, :destroy]

  # GET /student_notes
  # GET /student_notes.json
  def index
    @student_notes = StudentNote.all
  end

  # GET /student_notes/1
  # GET /student_notes/1.json
  def show
  end

  # GET /student_notes/new
  def new
    @student_note = StudentNote.new
  end

  # GET /student_notes/1/edit
  def edit
  end

  # POST /student_notes
  # POST /student_notes.json
  def create
    @student_note = StudentNote.new(student_note_params)

    respond_to do |format|
      if @student_note.save
        format.html { redirect_to @student_note, notice: 'Student note was successfully created.' }
        format.json { render :show, status: :created, location: @student_note }
      else
        format.html { render :new }
        format.json { render json: @student_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_notes/1
  # PATCH/PUT /student_notes/1.json
  def update
    respond_to do |format|
      if @student_note.update(student_note_params)
        format.html { redirect_to @student_note, notice: 'Student note was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_note }
      else
        format.html { render :edit }
        format.json { render json: @student_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_notes/1
  # DELETE /student_notes/1.json
  def destroy
    @student_note.destroy
    respond_to do |format|
      format.html { redirect_to student_notes_url, notice: 'Student note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_note
      @student_note = StudentNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_note_params
      params.require(:student_note).permit(:student_id, :note_one, :note_two, :note_three, :report_notes)
    end
end
