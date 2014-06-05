class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @submissions = @student.submitted_homework_documents
    @returns = @student.returned_homework_documents
  end

  private
end
