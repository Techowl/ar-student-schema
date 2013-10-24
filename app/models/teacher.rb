require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  # attr_accessor :name, :email, :address, :phone
end

teach1 = Teacher.create(name: 'Bob Bobson', email: 'bobby@gmail.com', address: '123 Fun St', phone: '1231231234')
teach2 = Teacher.create(name: 'Joe Joeson')
teach3 = Teacher.create(name: 'Martha Marthason')
teach4 = Teacher.create(name: 'Jim George Johnson')
teach5 = Teacher.create(name: 'Mr. Wiggles')
teach6 = Teacher.create(name: 'Mr. Squiggles', phone: '567-321-4567')
teach7 = Teacher.create(name: 'Mr. Biggles', address: '24567 Market Rd')
teach8 = Teacher.create(name: 'Joy', email: 'joe@gmail.com')
teach9 = Teacher.create(name: 'Frank Frakson')


