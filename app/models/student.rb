require_relative '../../db/config'

class Student < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  # validates :email, :format => { :with => /.+@.+\..{2,}/, :message => 'No good!'}, :uniqueness => true
  # validates :age, :numericality => { :greater_than_or_equal_to => 5 }
  # validates :phone_number_getter, :length => { :minimum => 10 }
  # validates :email, :uniqueness => true

  attr_accessor :phone

  def name
    "#{first_name} #{last_name}"
  end

  def age
    (Time.new.to_date - birthday).to_i / 365
  end

  def phone_number_getter
    @phone.scan(/\d/).join
  end
end

