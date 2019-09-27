class School
  # ROSTER = {} <= that didn't work as a variable, but @roster did. Why?
  #can also use attr_accessor for name/roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(stud_name, stud_grade)
    if !(@roster.keys.include?(stud_grade))
      @roster[stud_grade] = []
      @roster[stud_grade] << stud_name
    else
      @roster[stud_grade] << stud_name
    end
  end
  
  def grade(grade) 
    @roster[grade]
  end
  
  def sort 
    @roster.each do |key, value|
      value.sort!  
    end
  end
end