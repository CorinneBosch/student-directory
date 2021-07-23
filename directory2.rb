def input_students
  puts "Pleae enter the name of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp
  # name = gets.each_line {|s| s}
  major = gets.chomp

  # while !name.empty? do
  #   students << {name: name, cohort: :november}
  #   puts "Now we have #{students.count} students"
  #   name = gets.chomp
  # end

  # adding more stuff to hash or changing input
  while !name.empty? do
    puts "Would you like to submit *#{name}* & *#{major}* to the Directoy? (yes/no)"
    yes_or_no = gets.chomp
    if yes_or_no == 'yes'
      students << {name: name, cohort: :november, major: major}
      (students.count == 1) ? (puts "Now we have #{students.count} student") : (puts "Now we have #{students.count} students")
      name = gets.chomp
    elsif yes_or_no == 'no'
      name = gets.chomp
      major = gets.chomp
    else 
    end
    
  end

  students
end

def print_header
  puts "The students of Villans Academy"
  puts "-" * 31
end
# Integer before Name
# def print(students)
#   students.each.with_index(0) do |student, index|
#     puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end

# Only Print Students beginning with D
# def print(students)
#   students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].chr == "D" 
#   end
# end

# Only p students if name < 12 chars
# def print(students)
#   students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12 
#   end
# end

#• Replace each with while or until
# def print(students)
#   while !students.empty?
#     # puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     puts "#{students['ruby directory2.rb']}"
#     break
#   end
# end

# Add more key values
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort) - #{student[:major]} as major"
  end
end

# Impementing Center
# def print(students)
#   students.each do |student|
#     puts "* #{student[:name]}".ljust(20) + " (#{student[:cohort]} cohort)"
#   end
# end


# def print(students)
#   students.each do |student|
#     puts "#{student[:name]}(#{student[:cohort]} cohort)"
#   end
# end

def print_footer(students)
  puts "-" * 31
  (students.count == 1) ? (puts "Overall, we have: #{students.count} great student") : (puts "Overall, we have: #{students.count} great students")
end
# nothing happes until we call the methods

students = input_students
print_header
print(students)
print_footer(students)