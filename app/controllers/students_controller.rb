class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
    self.search(name)
  end

  def self.search(name)
    if name.empty?
      return self.all
    else
      @student = self.all.collect do { |student| student.name == name }
    end
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end
end
