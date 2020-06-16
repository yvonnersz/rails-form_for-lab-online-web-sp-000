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

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(post_params(:student_first_name))
    @student.update(post_params(:student_last_name))
    redirect_to student_path(@student)
  end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end

end
