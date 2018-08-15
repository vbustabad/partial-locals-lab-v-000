require 'pry'

class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])

    binding.pry
    @classroom.students.collect do |student|
      @student
    end
  end

  def index
    @classrooms = Classroom.all
  end
end
