class School  
  attr_accessor :grade

  def initialize
    @students = {}
  end

  def students(grade)
    @students[grade] = [] if @students[grade].nil?
    @students[grade].sort!
  end

  def add(name, grade)
    @students[grade] = [] if @students[grade].nil?
    @students[grade] << name
  end
  def students_by_grade
    @students.sort.map { |grade,students| {grade: grade, students: students.sort} }
  end
end
    
