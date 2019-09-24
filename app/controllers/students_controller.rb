class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    # binding.pry
    @student.update(active: !@student.active)
    # binding.pry
    redirect_to(student_path(@student))
  end

  private

    def set_student
      # binding.pry
      @student = Student.find(params[:id])
    end
end