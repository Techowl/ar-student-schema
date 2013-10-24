require_relative 'teacher'
require_relative 'student'


# s1 = Student.create(first_name: 'Bob', last_name: 'Loblaw')
teach2 = Teacher.create(name: 'Joe Joeson', email: 'joejoe@joe.co')
s3 = teach2.students.create(first_name: 'Jimmy', last_name: 'Loblaw')
# s2 = Student.create(first_name: 'X', last_name:'X')
# s3 = Student.create(first_name:'Y', last_name:'Y')
# s4 = Student.create(first_name:'Z', last_name:'Z')
# s5 = Student.create(first_name:'AA', last_name:'AA')
# s6 = Student.create(first_name:'AB', last_name:'AB')
# s7 = Student.create(first_name:'AC', last_name:'AC')
# s8 = Student.create(first_name:'AD', last_name:'AD')
# s9 = Student.create(first_name:'AE', last_name:'AE')
# s10 = Student.create(first_name:'AF', last_name:'AF')
# s11 = Student.create(first_name:'AG', last_name:'AG')
# s12 = Student.create(first_name:'AH', last_name:'AH')

# teach1 = Teacher.create(name: 'Bob Bobson', email: 'bobby@gmail.com', address: '123 Fun St', phone: '1231231234')
# teach3 = Teacher.create(name: 'Martha Marthason', email: 'mm@mm.com')
# teach4 = Teacher.create(name: 'Jim George Johnson', email: 'jgj@gmail.com')
# teach5 = Teacher.create(name: 'Mr. Wiggles', email: 'mrwig@wig.co')
# teach6 = Teacher.create(name: 'Mr. Squiggles', phone: '567-321-4567', email: 'winner@win.com')
# teach7 = Teacher.create(name: 'Mr. Biggles', address: '24567 Market Rd', email: 'jim@jim.co')
# teach8 = Teacher.create(name: 'Joy', email: 'joe@gmail.com')
# teach9 = Teacher.create(name: 'Frank Frankson', email: 'frankie@frank.com')


teachers = Teacher.all
num_teachers = teachers.length
puts num_teachers
students = Student.all
num_students = students.length
puts num_students

# students.each do |student|
#   student.update(teacher_id: (rand(num_teachers) + 1))
# end
