class School
  def initialize
    @students = Hash.new([])
  end

  def students(grade)
    @students[grade]
  end

  def add(name, grade)
    @students[grade] = [] if @students[grade].empty?
    @students[grade] << name
    @students[grade].sort!
  end

  def students_by_grade
    @students.map { |grade, students| {grade: grade, students: students}}.sort_by { |hash| hash[:grade]}
  end
end

module BookKeeping
  VERSION = 3
end