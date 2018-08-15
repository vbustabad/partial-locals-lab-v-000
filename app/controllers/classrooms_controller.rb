class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])

    @classroom.students.collect do |student|
      @student
    end
  end

  def index
    @classrooms = Classroom.all
  end
end
