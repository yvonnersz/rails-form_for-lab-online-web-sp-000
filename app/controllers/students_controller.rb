class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:student_first_name]
    @student.last_name = params[:student_last_name]
    @student.save
    redirect_to (@student)
  end

end
