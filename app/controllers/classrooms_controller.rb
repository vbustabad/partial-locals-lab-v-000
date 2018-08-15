require 'pry'

class ClassroomsController < ApplicationController
  binding.pry
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
