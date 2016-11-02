class PagesController < ApplicationController
  
  include Levels
  include Results
  include PagesHelper

  def sample_test
    @questions = []
    level = Level.all.count
    count = 1

    level.times do 
      @question = Question.where(level_id: count, is_active: true).order("RANDOM()").limit(5)
      @question.each do |question|
        @questions.push question
      end
      count += 1
    end

    @questions = @questions.shuffle
  end

  def result
    arr = []
    @answers = []

    @level_1 = []
    @level_2 = []
    @level_3 = []
    @level_4 = []

    params.values.each do |value|
      if value.to_i != 0
        arr.push value.to_i
      end
    end

    arr.each do |elem|
      @answers.push Answer.find(elem)
    end

    @answers.each do |answer|
      if answer.is_correct == true
        if answer.question.level.id == 1
          @level_1.push answer
        elsif answer.question.level.id == 2
          @level_2.push answer
        elsif answer.question.level.id == 3
          @level_3.push answer
        elsif answer.question.level.id == 4
          @level_4.push answer
        end
      end
    end

    beginner = Beginner.new('Beginner', @level_1.count)
    elementary = Elementary.new('Elementary', @level_2.count)
    intermediate = Intermediate.new('Intermediate', @level_3.count)
    upper = UpperIntermediate.new('Upper-Intermediate', @level_4.count)

    array_levels = [beginner, elementary, intermediate, upper]

    result_new = Result.new
    @result = result_new.define(array_levels)
  
  end
  
  def literature_list
    @library_files = LibraryFile.all
  end

  def new_homework
    @homework = Homework.new
    @homework.homework_files.build
    question = @homework.homework_questions.build
    question.homework_answers.build
  end

  def student_cabinet
    find_user = User.find(params[:id])
    homework_assignment = HomeworkAssignment.where(user_id: find_user)
    @homeworks = homeworks_student(homework_assignment)
  end

  def teacher_cabinet
    @hw_assignment = HomeworkAssignment.new
    @pend_hws = []
    current_user.homeworks.each do |homework|
      homework.homework_assignments.each do |assignment|
        if assignment.homework_result != nil && assignment.homework_status_id == 2
          @pend_hws.push assignment.homework_result
        end
      end
    end
  end

  def teacher_literature
    @literature = LibraryFile.new
    @literatures = LibraryFile.where(user_id: current_user.id)
  end

  def teachers
    @teachers = User.where(position_id: 2, status: 'active')
  end

  def my_students
    @students = User.where(teacher_id: current_user.id)
  end

  def teacher_homeworks
    @homeworks = Homework.where(user_id: current_user.id)
  end

end