require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(level)
        roster[level] 
    end

    def sort
        sorted_list = {}
        roster.each do |grade, student|
            sorted_list[grade] = student.sort
        # binding.pry
        end
        sorted_list
    end


end