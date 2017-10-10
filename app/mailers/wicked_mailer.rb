class WickedMailer < ActionMailer::Base

  default from: "info@bogotabusinessenglish.com"

  def student_note_email(notes)

    @report = notes

    attachments["Progress_Report_#{@report.student.name}.pdf"] = WickedPdf.new.pdf_from_string( render_to_string(pdf: 'Progress Report', 
                                                                                                                 template: 'student_notes/show.pdf.erb') )
    mail(to: @report.student.email, subject: "report" )
    
  end

end 